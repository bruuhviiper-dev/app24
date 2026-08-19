import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/app_state.dart';
import '../services/purchase_service.dart';
import '../services/store_products.dart';

/// Loja enxuta: a ÚNICA compra é "Remover anúncios" (pagamento único).
/// Todo o resto do app é grátis.
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  Future<void> _buy(BuildContext context) async {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(const SnackBar(content: Text('Abrindo a compra…')));
    final res = await PurchaseService.instance.buy(StoreProducts.removeAds.id);
    if (!context.mounted) return;
    final msg = switch (res) {
      PurchaseResult.success => 'Pronto! Anúncios removidos. 🎉',
      PurchaseResult.pending => 'Confirme a compra na janela da loja…',
      PurchaseResult.cancelled => 'Compra cancelada.',
      PurchaseResult.unavailable =>
        'Produto indisponível. Tente novamente mais tarde.',
      PurchaseResult.error => 'Não foi possível concluir a compra.',
    };
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    final removed = context.watch<AppState>().adsRemoved;
    final price = PurchaseService.instance.priceOf(StoreProducts.removeAds.id);
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Remover anúncios'),
        actions: [
          TextButton(
            onPressed: () async {
              await PurchaseService.instance.restore();
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Compras restauradas.')),
                );
              }
            },
            child: const Text('Restaurar'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 8),
          Center(
            child: Container(
              width: 96,
              height: 96,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: scheme.primary.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: const Text('🚫', style: TextStyle(fontSize: 46)),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            removed ? 'Anúncios removidos! 🎉' : 'Remover anúncios',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 10),
          Text(
            removed
                ? 'Obrigado! Você usa o app sem nenhum anúncio.'
                : 'Use o app sem NENHUM anúncio, para sempre. Pagamento único, '
                    'sem mensalidade.',
            textAlign: TextAlign.center,
            style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 15),
          ),
          const SizedBox(height: 22),
          if (!removed)
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () => _buy(context),
                child: Text('Remover anúncios  •  $price',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w800)),
              ),
            ),
          const SizedBox(height: 26),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest.withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Já vem tudo grátis ✅',
                    style: TextStyle(fontWeight: FontWeight.w800)),
                SizedBox(height: 10),
                _Free('Todas as frases e categorias'),
                _Free('Editor completo de imagens'),
                _Free('Fundos, fotos e fontes'),
                _Free('Salvar em HD e sem marca d\'água'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Free extends StatelessWidget {
  const _Free(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          const Icon(Icons.check_circle_rounded,
              color: Color(0xFF16A34A), size: 18),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
