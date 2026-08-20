import 'package:flutter/material.dart';

/// Fundos-imagem INSPIRADORES. Começa pelos temáticos originais (amanhecer, céu,
/// estrada, folhas, mar, montanha — a identidade) e segue com 96 gerados
/// (nascer do sol, caminho, montanhas, árvore, horizonte, luz, pássaros — 8
/// cenas × 10 paletas × variações). Assets leves, offline.
class ImageBackgrounds {
  ImageBackgrounds._();

  static const List<String> _vida = [
    'assets/backgrounds/bg_amanhecer.png',
    'assets/backgrounds/bg_ceu.png',
    'assets/backgrounds/bg_estrada.png',
    'assets/backgrounds/bg_folhas.png',
    'assets/backgrounds/bg_mar.png',
    'assets/backgrounds/bg_montanha.png',
  ];

  static List<String> get all => [
        ..._vida,
        for (var i = 1; i <= 96; i++)
          'assets/backgrounds/bg${i.toString().padLeft(2, '0')}.jpg',
      ];
}

/// Filtros de cor aplicados por cima do fundo (tinta translúcida). Dão a
/// sensação de "mais opções" sem precisar de mil imagens.
class CardFilters {
  CardFilters._();

  static const List<String> names = [
    'Original',
    'Quente',
    'Frio',
    'Rosé',
    'Vintage',
    'Escuro',
    'Claro',
  ];

  /// Cor da tinta do filtro [i] (0 = Original / sem filtro).
  static Color? color(int i) => switch (i) {
        1 => const Color(0x33FF7A18), // quente
        2 => const Color(0x332A6FFF), // frio
        3 => const Color(0x33FF3D8B), // rosé
        4 => const Color(0x40C9A24B), // vintage
        5 => const Color(0x59000000), // escuro
        6 => const Color(0x26FFFFFF), // claro
        _ => null,
      };
}
