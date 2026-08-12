/// Gerador PROCEDURAL de FRASES DA VIDA — SEM IA, offline. Conteúdo original,
/// reflexivo e inspirador. Índice espalhado (começo/fim mudam a cada frase).
class GreetingGenerator {
  GreetingGenerator._();

  static const List<String> _open = [
    'Hoje,',
    'Na vida,',
    'Com o tempo,',
    'Aos poucos,',
    'Apesar de tudo,',
    'No fim das contas,',
    'Cada dia,',
    'Mais cedo ou mais tarde,',
    'Nos dias difíceis,',
    'Quando tudo pesa,',
    'A verdade é que',
    'No fundo,',
    'Acredite:',
    'Lembre-se:',
  ];

  static const List<String> _core = [
    'a vida é feita de recomeços',
    'o que importa é seguir em frente',
    'cada escolha constrói o seu caminho',
    'a felicidade mora nas pequenas coisas',
    'as quedas também ensinam a levantar',
    'a paz começa dentro de você',
    'a gratidão transforma o que temos em suficiente',
    'os melhores dias ainda estão por vir',
    'você é mais forte do que imagina',
    'nem tudo que pesa é para carregar sozinho',
    'a jornada vale mais que o destino',
    'quem persiste no bem colhe bons frutos',
    'o tempo cura e ensina o que a pressa não deixa ver',
    'sonhar é o primeiro passo de toda conquista',
    'a vida é curta demais para viver com medo',
    'cada amanhecer é uma nova chance',
  ];

  static const List<String> _close = [
    'Siga em frente.',
    'Confie no processo.',
    'Tudo passa.',
    'Você é capaz.',
    'Um dia de cada vez.',
    'Vale a pena continuar.',
    'Respire e recomece.',
    'O melhor ainda vem.',
    'Tenha fé na caminhada.',
    'Cuide de você.',
    'Faça valer a pena.',
    'Viva com propósito.',
  ];

  static int get total => _open.length * _core.length * _close.length;

  static String byIndex(int i) {
    final n = i.abs();
    final o = _open[n % _open.length];
    final c = _core[(n ~/ _open.length) % _core.length];
    final f = _close[n % _close.length];
    return '$o $c. $f';
  }

  /// Frase do dia (determinística).
  static String ofNow([DateTime? date]) {
    final d = date ?? DateTime.now();
    final dayIndex =
        DateTime(d.year, d.month, d.day).difference(DateTime(2020, 1, 1)).inDays;
    return byIndex(dayIndex * 7919);
  }
}
