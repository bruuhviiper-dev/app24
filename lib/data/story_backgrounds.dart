import 'package:flutter/material.dart';

/// Fundo de imagem para o cartão de story. Alguns são grátis; os marcados como
/// [premium] fazem parte do valor da loja (temas/pacote/assinatura).
class StoryBg {
  const StoryBg(this.colors, {this.premium = false, this.asset});
  final List<Color> colors;
  final bool premium;

  /// Caminho de uma imagem offline (assets/backgrounds/...). Quando presente,
  /// o fundo usa a foto em vez do gradiente.
  final String? asset;
  bool get isImage => asset != null;

  static const List<StoryBg> all = [
    // ----- imagens offline (natureza/vida) grátis -----
    StoryBg([Color(0xFFf6d365), Color(0xFFff5e62)],
        asset: 'assets/backgrounds/bg_amanhecer.png'),
    StoryBg([Color(0xFF1f4037), Color(0xFF99f2c8)],
        asset: 'assets/backgrounds/bg_montanha.png'),
    StoryBg([Color(0xFF11998e), Color(0xFF38ef7d)],
        asset: 'assets/backgrounds/bg_folhas.png'),
    // ----- grátis -----
    StoryBg([Color(0xFFFF8008), Color(0xFFFFC837)]),
    StoryBg([Color(0xFF2193B0), Color(0xFF6DD5ED)]),
    StoryBg([Color(0xFF11998E), Color(0xFF38EF7D)]),
    StoryBg([Color(0xFF0F2027), Color(0xFF2C5364)]),
    StoryBg([Color(0xFFEE0979), Color(0xFFFF6A00)]),
    StoryBg([Color(0xFF141E30), Color(0xFF243B55)]),
    // ----- premium (imagens personalizadas) -----
    StoryBg([Color(0xFF2193b0), Color(0xFF6dd5ed)],
        asset: 'assets/backgrounds/bg_mar.png', premium: true),
    StoryBg([Color(0xFF0f2027), Color(0xFF2c5364)],
        asset: 'assets/backgrounds/bg_estrada.png', premium: true),
    StoryBg([Color(0xFF141E30), Color(0xFF243B55)],
        asset: 'assets/backgrounds/bg_ceu.png', premium: true),
    StoryBg([Color(0xFF8E2DE2), Color(0xFF4A00E0)], premium: true),
    StoryBg([Color(0xFFf953c6), Color(0xFFb91d73)], premium: true),
    StoryBg([Color(0xFF00C9FF), Color(0xFF92FE9D)], premium: true),
    StoryBg([Color(0xFFFDC830), Color(0xFFF37335)], premium: true),
    StoryBg([Color(0xFF3a1c71), Color(0xFFd76d77), Color(0xFFffaf7b)],
        premium: true),
    StoryBg([Color(0xFF0F0C29), Color(0xFF302B63), Color(0xFF24243E)],
        premium: true),
    StoryBg([Color(0xFFff9966), Color(0xFFff5e62)], premium: true),
    StoryBg([Color(0xFF654ea3), Color(0xFFeaafc8)], premium: true),
    StoryBg([Color(0xFF1D976C), Color(0xFF93F9B9)], premium: true),
    StoryBg([Color(0xFF200122), Color(0xFF6F0000)], premium: true),
    StoryBg([Color(0xFF1A2980), Color(0xFF26D0CE)], premium: true),
    StoryBg([Color(0xFFCB356B), Color(0xFFBD3F32)], premium: true),
    StoryBg([Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
        premium: true),
    StoryBg([Color(0xFFee9ca7), Color(0xFFffdde1)], premium: true),
    // ----- lote extra (muito mais variedade, grátis) -----
    StoryBg([Color(0xFFFFAFBD), Color(0xFFFFC3A0)]),
    StoryBg([Color(0xFFA1FFCE), Color(0xFFFAFFD1)]),
    StoryBg([Color(0xFFFBD3E9), Color(0xFFBB377D)]),
    StoryBg([Color(0xFFFFE29F), Color(0xFFFFA99F), Color(0xFFFF719A)]),
    StoryBg([Color(0xFF43E97B), Color(0xFF38F9D7)]),
    StoryBg([Color(0xFFFA709A), Color(0xFFFEE140)]),
    StoryBg([Color(0xFF667EEA), Color(0xFF764BA2)]),
    StoryBg([Color(0xFF4FACFE), Color(0xFF00F2FE)]),
    StoryBg([Color(0xFFF093FB), Color(0xFFF5576C)]),
    StoryBg([Color(0xFFC9FFBF), Color(0xFFFFAFBD)]),
    StoryBg([Color(0xFFE0C3FC), Color(0xFF8EC5FC)]),
    StoryBg([Color(0xFFFFD26F), Color(0xFF3677FF)]),
    StoryBg([Color(0xFF7F00FF), Color(0xFFE100FF)]),
    StoryBg([Color(0xFF00B4DB), Color(0xFF0083B0)]),
    StoryBg([Color(0xFFEB3349), Color(0xFFF45C43)]),
    StoryBg([Color(0xFFFF512F), Color(0xFFDD2476)]),
    StoryBg([Color(0xFFC33764), Color(0xFF1D2671)]),
    StoryBg([Color(0xFFED4264), Color(0xFFFFEDBC)]),
    StoryBg([Color(0xFF614385), Color(0xFF516395)]),
    StoryBg([Color(0xFF16A085), Color(0xFFF4C4F3)]),
    StoryBg([Color(0xFFFF6E7F), Color(0xFFBFE9FF)]),
    StoryBg([Color(0xFFDE6262), Color(0xFFFFB88C)]),
    StoryBg([Color(0xFFD38312), Color(0xFFA83279)]),
    StoryBg([Color(0xFF8A2387), Color(0xFFE94057), Color(0xFFF27121)]),
    StoryBg([Color(0xFFFC5C7D), Color(0xFF6A82FB)]),
    StoryBg([Color(0xFFFF5F6D), Color(0xFFFFC371)]),
    StoryBg([Color(0xFFEA8D8D), Color(0xFFA890FE)]),
    StoryBg([Color(0xFF5433FF), Color(0xFF20BDFF), Color(0xFFA5FECB)]),
  ];
}
