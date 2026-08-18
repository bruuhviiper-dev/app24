import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import 'store_products.dart';

/// Compras REAIS via Google Play Billing (in_app_purchase).
/// Mantém a mesma API pública da versão anterior (stub), então as telas
/// (store_screen) e o main.dart continuam funcionando sem mudanças:
///   buy(id) retorna PurchaseResult, restore(), init(),
///   onEntitlement(cb), onSubscriptionGranted(cb), priceOf(id), isAvailable.
class PurchaseService extends ChangeNotifier {
  PurchaseService._();
  static final PurchaseService instance = PurchaseService._();

  final InAppPurchase _iap = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _sub;

  void Function(String productId)? _onGrant;
  void Function(String productId)? _onSubGrant;

  void onEntitlement(void Function(String productId) cb) => _onGrant = cb;
  void onSubscriptionGranted(void Function(String productId) cb) =>
      _onSubGrant = cb;

  bool _available = false;
  bool get isAvailable => _available;

  /// Detalhes reais dos produtos (preço localizado etc.), por id.
  final Map<String, ProductDetails> _products = {};

  /// Compras em andamento aguardando o resultado do fluxo (por id).
  final Map<String, Completer<PurchaseResult>> _pending = {};

  /// Todos os ids do catálogo (produtos + assinaturas).
  Set<String> get _allIds => {for (final p in StoreProducts.all) p.id};

  /// Preço real da loja; se ainda não carregou, usa o fallback do catálogo.
  String priceOf(String productId) =>
      _products[productId]?.price ??
      StoreProducts.byId(productId)?.fallbackPrice ??
      '';

  Future<void> init() async {
    _available = await _iap.isAvailable();
    if (!_available) {
      notifyListeners();
      return;
    }
    _sub = _iap.purchaseStream.listen(
      _onPurchaseUpdate,
      onError: (_) {},
    );
    await _loadProducts();
    // Recupera direitos já comprados (não-consumíveis e assinaturas ativas).
    try {
      await _iap.restorePurchases();
    } catch (_) {}
  }

  Future<void> _loadProducts() async {
    try {
      final resp = await _iap.queryProductDetails(_allIds);
      for (final p in resp.productDetails) {
        _products[p.id] = p;
      }
      notifyListeners();
    } catch (_) {}
  }

  Future<PurchaseResult> buy(String productId) async {
    if (!_available) return PurchaseResult.unavailable;
    final product = _products[productId];
    if (product == null) return PurchaseResult.unavailable;

    // Se já há uma compra pendente para este id, retorna o mesmo future.
    final existing = _pending[productId];
    if (existing != null) return existing.future;

    final completer = Completer<PurchaseResult>();
    _pending[productId] = completer;
    final param = PurchaseParam(productDetails: product);
    try {
      // Assinaturas e itens não-consumíveis usam buyNonConsumable.
      await _iap.buyNonConsumable(purchaseParam: param);
    } catch (_) {
      _pending.remove(productId);
      return PurchaseResult.error;
    }
    return completer.future;
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) {
    for (final pd in purchases) {
      switch (pd.status) {
        case PurchaseStatus.pending:
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          _grant(pd.productID);
          _resolve(pd.productID, PurchaseResult.success);
          break;
        case PurchaseStatus.error:
          _resolve(pd.productID, PurchaseResult.error);
          break;
        case PurchaseStatus.canceled:
          _resolve(pd.productID, PurchaseResult.cancelled);
          break;
      }
      // Obrigatório finalizar a compra, senão o Google reembolsa em 3 dias.
      if (pd.pendingCompletePurchase) {
        _iap.completePurchase(pd);
      }
    }
  }

  void _grant(String productId) {
    if (StoreProducts.subscriptionIds.contains(productId)) {
      _onSubGrant?.call(productId);
    } else {
      _onGrant?.call(productId);
    }
  }

  void _resolve(String productId, PurchaseResult result) {
    final c = _pending.remove(productId);
    if (c != null && !c.isCompleted) c.complete(result);
  }

  Future<void> restore() async {
    if (_available) {
      try {
        await _iap.restorePurchases();
      } catch (_) {}
    }
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
}
