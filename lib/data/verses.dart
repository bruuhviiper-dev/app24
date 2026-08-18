import 'package:flutter/material.dart';

import 'models.dart';

/// Banco de FRASES DA VIDA (offline). Conteúdo 100% ORIGINAL — reflexivo,
/// inspirador e positivo, sobre viver, recomeçar, superar e agradecer.
///
/// Cada categoria combina dois conjuntos de trechos (ideia × arremate),
/// gerando 120+ frases ÚNICAS por categoria — todas editáveis no app.
class VerseData {
  VerseData._();

  static const _reflexao = [Color(0xFF11998E), Color(0xFF38EF7D)];
  static const _motivacao = [Color(0xFFf12711), Color(0xFFf5af19)];
  static const _superacao = [Color(0xFF1f4037), Color(0xFF99f2c8)];
  static const _sabedoria = [Color(0xFF334d50), Color(0xFF7bb274)];
  static const _amoravida = [Color(0xFFf857a6), Color(0xFFff5858)];
  static const _paz = [Color(0xFF2193b0), Color(0xFF6dd5ed)];
  static const _bomdia = [Color(0xFFf6d365), Color(0xFFfda085)];
  static const _boanoite = [Color(0xFF141E30), Color(0xFF243B55)];
  static const _pensamentos = [Color(0xFF3a6073), Color(0xFF16222a)];
  static const _gratidao = [Color(0xFFf7971e), Color(0xFFffd200)];
  static const _curtas = [Color(0xFF43e97b), Color(0xFF38f9d7)];
  static const _atitude = [Color(0xFF0f2027), Color(0xFF2c5364)];
  static const _recomeco = [Color(0xFFff9966), Color(0xFFff5e62)];
  static const _profunda = [Color(0xFF0F0C29), Color(0xFF302B63)];
  static const _refletir = [Color(0xFF134E5E), Color(0xFF71B280)];
  static const _forca = [Color(0xFF485563), Color(0xFF29323c)];

  /// Cross-product REAL: cada ideia (A) combina com cada arremate (B),
  /// gerando a.length × b.length frases únicas por categoria (variedade alta).
  static List<Verse> _mix(List<String> a, List<String> b) {
    final seen = <String>{};
    final out = <Verse>[];
    for (final x in a) {
      for (final y in b) {
        final t = '$x $y';
        if (seen.add(t)) out.add(Verse(t));
      }
    }
    return out;
  }

  // ---------------- REFLEXÃO ----------------
  static const _reflexaoA = [
    'A vida é curta demais para viver de mágoas.',
    'Nem tudo que perdemos era pra ficar.',
    'Às vezes a gente precisa parar pra recomeçar.',
    'O que é seu vai te encontrar no tempo certo.',
    'Cada pessoa que passa deixa um aprendizado.',
    'A felicidade está no caminho, não só no fim.',
    'Nem sempre entender é mais importante que aceitar.',
    'A vida ensina no silêncio o que a pressa não vê.',
    'O tempo não volta, mas ensina a viver melhor.',
    'Nem todo dia é bom, mas há algo bom em todo dia.',
    'A gente cresce quando para de fugir de si mesmo.',
    'Viver é aprender a soltar o que já cumpriu seu papel.',
    'O importante não é ter tudo, e sim valorizar o que se tem.',
  ];
  static const _reflexaoB = [
    'Reflita e siga mais leve.',
    'Guarde isso no coração.',
    'A vida é feita de recomeços.',
    'Tudo tem o seu tempo.',
    'E está tudo bem.',
    'Pense nisso hoje.',
    'A caminhada continua.',
    'Aprenda e siga em frente.',
    'Cada passo conta.',
    'O amanhã agradece.',
    'Respire e recomece.',
    'Faça valer a pena.',
  ];

  // ---------------- MOTIVAÇÃO ----------------
  static const _motivacaoA = [
    'Acredite no seu potencial e vá em frente.',
    'Os obstáculos são degraus para quem não desiste.',
    'Você é mais forte do que qualquer desafio.',
    'Grandes conquistas começam com pequenos passos.',
    'A vitória pertence a quem insiste.',
    'Transforme o medo em coragem e aja.',
    'Não espere o momento perfeito: comece agora.',
    'Cada esforço de hoje é o sucesso de amanhã.',
    'Foco no objetivo, e o resto se ajeita.',
    'Você chegou longe demais para desistir agora.',
    'A disciplina leva aonde a vontade não alcança.',
    'Levante, sacuda a poeira e continue.',
    'O sonho só é grande porque você é capaz dele.',
  ];
  static const _motivacaoB = [
    'Não desista!',
    'Você consegue.',
    'Vá com tudo.',
    'O melhor ainda vem.',
    'Acredite em você.',
    'Faça acontecer.',
    'Siga firme.',
    'A vitória é sua.',
    'Um passo de cada vez.',
    'Persista e conquiste.',
    'Hoje é o dia.',
    'Coragem e ação.',
  ];

  // ---------------- SUPERAÇÃO ----------------
  static const _superacaoA = [
    'Depois da tempestade, sempre vem a calmaria.',
    'As cicatrizes provam que você sobreviveu.',
    'Cair faz parte; levantar é o que te define.',
    'Você já venceu dias que achou que não venceria.',
    'A dor de hoje é a força de amanhã.',
    'Ninguém floresce sem antes enfrentar o inverno.',
    'Quem passa pelo fogo aprende a brilhar.',
    'Recomeçar é um ato de coragem, não de fraqueza.',
    'O que não te derrubou te deixou mais sábio.',
    'Cada recomeço é uma prova da sua força.',
    'Superar é transformar a queda em impulso.',
    'A vida testa, mas também recompensa quem resiste.',
    'Sua história é feita de quedas e recomeços.',
  ];
  static const _superacaoB = [
    'Você vai superar.',
    'Continue de pé.',
    'A força está em você.',
    'Isso também vai passar.',
    'Resistir já é vencer.',
    'Você é mais forte que isso.',
    'Um dia melhora.',
    'Não se renda agora.',
    'A luz sempre volta.',
    'Siga, você consegue.',
    'Renasça mais forte.',
    'O melhor ainda vem.',
  ];

  // ---------------- SABEDORIA ----------------
  static const _sabedoriaA = [
    'Escute mais, julgue menos.',
    'A humildade é a maior das sabedorias.',
    'Quem tem paciência colhe os melhores frutos.',
    'Palavras têm poder: use-as com cuidado.',
    'Nem toda batalha vale a sua paz.',
    'Saber a hora de calar também é sabedoria.',
    'O verdadeiro rico é quem sabe agradecer.',
    'A gente aprende mais com os erros que com os acertos.',
    'Gentileza não custa nada e vale muito.',
    'O sábio muda de ideia; o teimoso, nunca.',
    'Antes de falar, respire; antes de agir, pense.',
    'A maturidade chega quando paramos de culpar os outros.',
    'Cuidar da mente é tão importante quanto do corpo.',
  ];
  static const _sabedoriaB = [
    'Sabedoria é isso.',
    'Reflita com calma.',
    'A vida ensina.',
    'Guarde este conselho.',
    'Pense nisso.',
    'Assim se vive melhor.',
    'Esse é o caminho.',
    'Viva com propósito.',
    'Simples assim.',
    'Cresça a cada dia.',
    'A paz agradece.',
    'Sábio é quem aprende.',
  ];

  // ---------------- AMOR À VIDA ----------------
  static const _amoravidaA = [
    'A vida é bela quando aprendemos a agradecer.',
    'Ame a jornada, não só a chegada.',
    'Viva intensamente cada momento simples.',
    'Sorria: você está vivo e isso já é um presente.',
    'A vida é curta, aproveite quem te faz bem.',
    'Encontre beleza até nos dias comuns.',
    'Cada amanhecer é um convite para recomeçar.',
    'Viver bem é fazer o simples com amor.',
    'A melhor herança é uma vida bem vivida.',
    'Escolha ser feliz com o que você tem hoje.',
    'A vida floresce onde há gratidão e amor.',
    'Aproveite: o agora não volta.',
    'Colecione momentos, não apenas coisas.',
  ];
  static const _amoravidaB = [
    'Viva com amor.',
    'Aproveite a vida.',
    'Seja feliz hoje.',
    'A vida é agora.',
    'Sorria mais.',
    'Ame cada instante.',
    'Vale a pena viver.',
    'Celebre o simples.',
    'Gratidão sempre.',
    'Faça bonito.',
    'A vida é boa.',
    'Viva plenamente.',
  ];

  // ---------------- PAZ E SERENIDADE ----------------
  static const _pazA = [
    'A paz começa quando você se aceita.',
    'Solte o que não depende de você.',
    'Respire fundo: nem tudo precisa de resposta agora.',
    'Menos pressa, mais presença.',
    'A calma é a força de quem confia no tempo.',
    'Guarde a sua paz como o seu bem mais precioso.',
    'Deixe ir o que rouba a sua tranquilidade.',
    'A serenidade nasce de escolhas simples.',
    'Nem toda discussão merece a sua energia.',
    'Cultive silêncio e cultive paz.',
    'Aceitar o que não muda também é liberdade.',
    'A paz interior vale mais que ter razão.',
    'Descanse a mente: você merece esse alívio.',
  ];
  static const _pazB = [
    'Fique em paz.',
    'Respire e solte.',
    'Tudo se ajeita.',
    'Vá com calma.',
    'A paz é sua.',
    'Serenidade sempre.',
    'Menos peso, mais leveza.',
    'Descanse o coração.',
    'Confie no tempo.',
    'Deixe fluir.',
    'Paz interior é tudo.',
    'Acalme-se.',
  ];

  // ---------------- BOM DIA ----------------
  static const _bomdiaA = [
    'Bom dia! Hoje é uma nova chance de recomeçar.',
    'Que o seu dia seja leve como a manhã.',
    'Levante com gratidão: você tem mais um dia.',
    'Bom dia! Sorria e espalhe coisas boas.',
    'Comece o dia acreditando que ele será bom.',
    'Que hoje traga paz, força e boas surpresas.',
    'Um novo dia, novas oportunidades.',
    'Bom dia! Faça dele o seu melhor dia.',
    'Desperte com fé no que ainda vai acontecer.',
    'Que a sua manhã seja cheia de esperança.',
    'Bom dia! Escolha ser luz por onde passar.',
    'Cada manhã é um presente: aproveite.',
    'Que hoje você conquiste um pouco mais.',
  ];
  static const _bomdiaB = [
    'Tenha um ótimo dia!',
    'Bom dia! ☀️',
    'Vá com tudo hoje.',
    'Que seja abençoado.',
    'Sorria e siga.',
    'Aproveite o dia.',
    'Bora fazer bonito.',
    'Um dia lindo pra você.',
    'Force e fé!',
    'Bom dia, viva!',
    'Que dê tudo certo.',
    'Comece bem.',
  ];

  // ---------------- BOA NOITE ----------------
  static const _boanoiteA = [
    'Boa noite! Descanse a mente e o coração.',
    'Que o sono renove as suas forças.',
    'Termine o dia em paz com você mesmo.',
    'Boa noite! Amanhã é uma nova chance.',
    'Deixe as preocupações para amanhã e durma tranquilo.',
    'Que a noite traga descanso e bons sonhos.',
    'Feche o dia com gratidão pelo que viveu.',
    'Boa noite! Você fez o seu melhor hoje.',
    'Descanse: você merece esse sossego.',
    'Que os seus sonhos sejam leves e serenos.',
    'Boa noite! Solte o peso e durma em paz.',
    'Respire fundo e entregue o dia que passou.',
    'Que amanhã seja ainda melhor.',
  ];
  static const _boanoiteB = [
    'Boa noite! 🌙',
    'Durma bem.',
    'Bons sonhos.',
    'Descanse em paz.',
    'Até amanhã.',
    'Sonhe alto.',
    'Recarregue as energias.',
    'Boa noite, viva!',
    'Que amanhã seja lindo.',
    'Durma tranquilo.',
    'Paz e sossego.',
    'Um sono renovador.',
  ];

  // ---------------- PENSAMENTOS ----------------
  static const _pensamentosA = [
    'A mente é como um jardim: cuide do que planta nela.',
    'Seus pensamentos criam a sua realidade.',
    'Onde vai a sua atenção, vai a sua vida.',
    'Pensar bonito é o primeiro passo para viver bonito.',
    'O que você alimenta na mente, cresce.',
    'Cuide dos pensamentos: eles viram atitudes.',
    'Uma mente em paz enxerga soluções.',
    'Não acredite em tudo que você pensa.',
    'Grandes ideias nascem de mentes tranquilas.',
    'Mude os pensamentos e você muda a vida.',
    'A paz de espírito começa na cabeça.',
    'Pensamento positivo atrai dias melhores.',
    'Silencie a mente para escutar o coração.',
  ];
  static const _pensamentosB = [
    'Pense bonito.',
    'Cultive boas ideias.',
    'A mente é poderosa.',
    'Reflita sobre isso.',
    'Escolha bons pensamentos.',
    'Mude a mente, mude a vida.',
    'Foque no bem.',
    'Cuide do que pensa.',
    'A vida segue a mente.',
    'Pensamento é semente.',
    'Positividade sempre.',
    'Guarde essa ideia.',
  ];

  // ---------------- GRATIDÃO ----------------
  static const _gratidaoA = [
    'Gratidão transforma o que temos em suficiente.',
    'Agradeça pelo pouco e o muito virá.',
    'Ser grato é reconhecer a beleza do simples.',
    'A gratidão é a memória do coração.',
    'Agradeça hoje pelo que ontem você pediu.',
    'Quem agradece atrai mais motivos para agradecer.',
    'Gratidão é o segredo de uma vida leve.',
    'Reconheça as bênçãos escondidas no cotidiano.',
    'O coração grato nunca está vazio.',
    'Agradeça pela vida, pela saúde, pelo agora.',
    'Gratidão hoje, alegria sempre.',
    'Cada dia é motivo de agradecer.',
    'Seja grato até pelas lições difíceis.',
  ];
  static const _gratidaoB = [
    'Gratidão! 🙌',
    'Obrigado pela vida.',
    'Grato por tudo.',
    'Agradeça sempre.',
    'A vida é um presente.',
    'Reconheça o bem.',
    'Gratidão é tudo.',
    'Valorize o que tem.',
    'Coração grato.',
    'Obrigado, Deus.',
    'Grato pelo dia.',
    'Gratidão eterna.',
  ];

  // ---------------- FRASES CURTAS (status) ----------------
  static const _curtasA = [
    'Vivendo e aprendendo.',
    'Foco no que importa.',
    'Um dia de cada vez.',
    'Gratidão define.',
    'Segue o jogo.',
    'Fé e força.',
    'Evoluindo sempre.',
    'Sorria mais.',
    'Bora vencer.',
    'Paz interior.',
    'Recomeçar faz parte.',
    'A vida é agora.',
    'Simples assim.',
  ];
  static const _curtasB = [
    'Sempre em frente.',
    'Bora!',
    'Sem pressa.',
    'Com fé.',
    'Vale a pena.',
    'Sigo firme.',
    'Rumo ao topo.',
    'De boa.',
    'Viva!',
    'Tudo passa.',
    'Positividade.',
    'Feliz assim.',
  ];

  // ---------------- FOCO E ATITUDE ----------------
  static const _atitudeA = [
    'Menos desculpa, mais atitude.',
    'Disciplina vence o talento sem foco.',
    'Faça hoje o que o seu futuro vai agradecer.',
    'Ação supera intenção todos os dias.',
    'Pare de planejar e comece a executar.',
    'Quem foca, chega; quem se dispersa, cansa.',
    'Seja a energia que você quer atrair.',
    'Resultado é filho da constância.',
    'Não conte, faça — e deixe o resultado falar.',
    'A atitude de hoje constrói o amanhã.',
    'Corte o que te atrasa e acelere o que importa.',
    'Comprometa-se com o processo, não só com o sonho.',
    'Sua rotina revela o seu futuro.',
  ];
  static const _atitudeB = [
    'Foco total.',
    'Faça acontecer.',
    'Sem desculpas.',
    'Bora executar.',
    'Atitude vence.',
    'Constância é chave.',
    'Rumo ao objetivo.',
    'Ação agora.',
    'Disciplina sempre.',
    'Resultado é tudo.',
    'Determinação.',
    'Vá e conquiste.',
  ];

  // ---------------- RECOMEÇO ----------------
  static const _recomecoA = [
    'Todo fim é o começo de algo novo.',
    'Nunca é tarde para recomeçar.',
    'Vire a página e escreva um capítulo melhor.',
    'Recomeçar é dar à vida uma nova chance.',
    'Deixe o passado ensinar, não aprisionar.',
    'Um recomeço vale mais que mil desistências.',
    'Cada dia é uma folha em branco.',
    'Comece de novo quantas vezes for preciso.',
    'O que passou, passou; o que vem, você constrói.',
    'Recomeçar é acreditar que dá para melhorar.',
    'A vida sempre oferece um novo começo.',
    'Respire fundo e recomece com coragem.',
    'Não tenha medo de começar do zero.',
  ];
  static const _recomecoB = [
    'Recomece hoje.',
    'Um novo começo.',
    'Vire a página.',
    'Vá em frente.',
    'Comece de novo.',
    'O amanhã é seu.',
    'Recomeçar vale a pena.',
    'Reescreva a história.',
    'Nova chance, nova você.',
    'Force e recomece.',
    'Dá pra melhorar.',
    'Comece agora.',
  ];

  // ---------------- SABEDORIA PROFUNDA (premium) ----------------
  static const _profundaA = [
    'A vida não é sobre ter tudo, mas sobre valorizar o que se tem.',
    'O que você busca lá fora costuma morar dentro de você.',
    'Envelhecer é um privilégio negado a muitos.',
    'A verdadeira riqueza é o tempo bem vivido.',
    'A gente só perde de verdade o que nunca soube valorizar.',
    'O silêncio ensina o que o barulho esconde.',
    'Ser feliz é uma decisão, não uma circunstância.',
    'A vida encolhe ou cresce conforme a nossa coragem.',
    'Não há caminho para a paz: a paz é o caminho.',
    'O sentido da vida é dar sentido à vida.',
    'Quem olha pra dentro desperta; quem só olha pra fora, sonha.',
    'A maior jornada é a que fazemos até nós mesmos.',
    'Viver bem é uma arte que se aprende agradecendo.',
  ];
  static const _profundaB = [
    'Reflita profundamente.',
    'Deixe assentar no coração.',
    'A vida sussurra sabedoria.',
    'Pense com calma.',
    'Verdades que transformam.',
    'Medite sobre isso.',
    'Sabedoria de vida.',
    'Cresça por dentro.',
    'O essencial é invisível.',
    'Desperte para a vida.',
    'Simples e profundo.',
    'Guarde para sempre.',
  ];

  // ---------------- FRASES PARA REFLETIR (premium) ----------------
  static const _refletirA = [
    'Se você não gosta de algo, mude; se não pode mudar, mude a forma de ver.',
    'Compare-se com quem você foi ontem, não com os outros.',
    'Às vezes perder o que queríamos nos salva do que não precisávamos.',
    'A vida é 10% o que acontece e 90% como reagimos.',
    'Não são os anos na vida que contam, mas a vida nos anos.',
    'Aquilo que resiste, persiste; aquilo que aceitamos, se transforma.',
    'Ninguém pode voltar e mudar o começo, mas todos podem mudar o fim.',
    'A pressa em ter esconde a alegria de viver.',
    'O que você evita hoje, você repete amanhã.',
    'Cuidar de si não é egoísmo, é sobrevivência.',
    'Grandes mudanças começam por uma pequena decisão.',
    'A felicidade não é ter uma vida perfeita, e sim olhar além das imperfeições.',
    'O tempo que você tem é o único que realmente é seu.',
  ];
  static const _refletirB = [
    'Vale a pena refletir.',
    'Pense a respeito.',
    'Uma verdade da vida.',
    'Leve isso com você.',
    'Reflexão do dia.',
    'Medite sobre isso.',
    'Faça diferente.',
    'A escolha é sua.',
    'Isso muda tudo.',
    'Guarde e aplique.',
    'Sabedoria pura.',
    'Repense hoje.',
  ];

  // ---------------- SUPERAÇÃO (força — premium) ----------------
  static const _forcaA = [
    'Você já sobreviveu a 100% dos seus piores dias.',
    'A força que procura fora já existe dentro de você.',
    'Ser forte é continuar mesmo quando ninguém vê.',
    'Coragem não é ausência de medo, é agir apesar dele.',
    'Toda montanha é vencida um passo de cada vez.',
    'A raiz cresce mais fundo quando o vento sopra forte.',
    'Você é feito de recomeços e de resistência.',
    'A vida quebra, mas também reconstrói quem insiste.',
    'Os fortes não são os que nunca caem, mas os que sempre voltam.',
    'Dentro de você existe uma força que o mundo não vê.',
    'Cada cicatriz é uma medalha de guerra vencida.',
    'Persistir é a diferença entre o fim e o recomeço.',
    'Quando quiser desistir, lembre por que começou.',
  ];
  static const _forcaB = [
    'Seja forte.',
    'Você aguenta.',
    'Força e fé.',
    'Não desista.',
    'Levante e siga.',
    'Você é guerreiro.',
    'A força é sua.',
    'Resista.',
    'Continue firme.',
    'Vença mais um dia.',
    'Coragem sempre.',
    'De pé, sempre.',
  ];

  // ============ CATEGORIAS EXTRA (uso amplo, estilo top de mercado) ============
  static const _fotos = [Color(0xFFc471f5), Color(0xFFfa71cd)];
  static const _status = [Color(0xFF4facfe), Color(0xFF00f2fe)];
  static const _amorproprio = [Color(0xFFee9ca7), Color(0xFFb24592)];
  static const _positivas = [Color(0xFF43e97b), Color(0xFF38f9d7)];
  static const _indiretas = [Color(0xFFcb356b), Color(0xFFbd3f32)];
  static const _inteligentes = [Color(0xFF614385), Color(0xFF516395)];

  static const _fotosA = [
    'Sorria, a vida é uma boa foto.',
    'Colecionando momentos, não coisas.',
    'Foco no que me faz bem.',
    'Menos perfeição, mais verdade.',
    'Vivendo e aprendendo.',
    'Feliz e sem precisar explicar.',
    'O melhor ainda está por vir.',
    'Fazendo da vida a minha arte.',
    'Do meu jeito, sempre.',
    'Brilhando na minha essência.',
    'Momento perfeito é atitude, não sorte.',
    'Gratidão por mais um clique.',
  ];
  static const _fotosB = [
    '✨', '📸', 'e que venham os próximos.', 'porque eu mereço.', '💛',
    'sempre.', 'do meu jeitinho.', 'e ponto final.', '🌷', 'sem filtro.',
  ];
  static const _statusA = [
    'Seguindo em frente, sempre.',
    'Paz interior acima de tudo.',
    'Escolhi ser feliz.',
    'Foco, força e fé.',
    'No meu tempo, do meu jeito.',
    'Sorrindo apesar de tudo.',
    'Um dia de cada vez.',
    'Gratidão muda tudo.',
    'Sendo minha melhor versão.',
    'Deixa a vida me levar.',
    'Bons pensamentos, boa vida.',
    'Tudo passa — isso também vai passar.',
  ];
  static const _statusB = [
    '💫', 'e segue o jogo.', 'sempre.', '🙏', 'e tá tudo bem.',
    'no meu ritmo.', '✌️', 'com o coração leve.', '🌈', 'sem pressa.',
  ];
  static const _amorproprioA = [
    'Eu sou o meu maior projeto.',
    'Me escolher também é amor.',
    'Aprendi a caber inteira em mim.',
    'Meu bem-estar é prioridade.',
    'Sou suficiente do jeito que sou.',
    'Cuidar de mim é revolução.',
    'Me amar foi o melhor recomeço.',
    'Não me encolho pra ninguém.',
    'A minha paz não tem preço.',
    'Floresço quando cuido de mim.',
    'Eu mereço o que eu ofereço.',
    'Primeiro eu, com amor.',
  ];
  static const _amorproprioB = [
    '💖', 'e isso basta.', 'sem culpa.', 'sempre.', 'porque eu importo.',
    '🌸', 'e ponto.', 'com orgulho.', 'todos os dias.', '✨',
  ];
  static const _positivasA = [
    'Hoje vai ser um bom dia.',
    'Coisas boas estão a caminho.',
    'Pensa leve, vive leve.',
    'Tudo conspira a meu favor.',
    'A energia boa sempre volta.',
    'Acredite e vá em frente.',
    'Cada dia é uma nova chance.',
    'O bem que faço volta pra mim.',
    'Escolho ver o lado bom.',
    'A gratidão abre caminhos.',
    'Sorria: funciona.',
    'O universo ouve o meu sim.',
  ];
  static const _positivasB = [
    '🌻', 'sempre.', 'confie.', '✨', 'e assim será.',
    '💫', 'com fé.', 'e pronto.', 'todo dia.', '🙌',
  ];
  static const _indiretasA = [
    'Quem tem que entender, entende.',
    'Não é pra todos, é pra quem sabe.',
    'Guardei o silêncio, não a razão.',
    'Cada um colhe o que planta.',
    'Meu sumiço já foi o recado.',
    'Dou o valor que recebo.',
    'Distância também é resposta.',
    'Nem toda ausência é falta.',
    'Fiz por merecer a minha paz.',
    'Palavras levo, atitudes guardo.',
    'A régua agora é outra.',
    'Se tocou, era pra você.',
  ];
  static const _indiretasB = [
    '🎯', 'e tá ótimo assim.', 'sem drama.', 'ponto.',
    'entendedores entenderão.', '💅', 'e segue o baile.', 'de boa.',
    'só isso.', '🙃',
  ];
  static const _inteligentesA = [
    'Sabedoria é saber o que ignorar.',
    'A mente que se abre não volta ao tamanho antigo.',
    'Grandes ideias começam no silêncio.',
    'Quem pensa longe caminha melhor.',
    'A ignorância pesa mais que o conhecimento.',
    'Aprender é o luxo que ninguém rouba.',
    'A dúvida é o começo da sabedoria.',
    'Ideias boas não têm pressa.',
    'Simplicidade é o auge da sofisticação.',
    'Pensar bem é viver melhor.',
    'O sábio ouve mais do que fala.',
    'A pergunta certa vale mais que mil respostas.',
  ];
  static const _inteligentesB = [
    '🧠', '— e siga pensando.', 'sempre.', '💡', 'reflita.',
    '📚', 'e evolua.', 'ponto.', 'de verdade.', '✍️',
  ];

  static final List<VerseCategory> categories = [
    VerseCategory(id: 'reflexao', name: 'Reflexão', emoji: '🌿', gradient: _reflexao, verses: _mix(_reflexaoA, _reflexaoB)),
    VerseCategory(id: 'motivacao', name: 'Motivação', emoji: '🔥', gradient: _motivacao, verses: _mix(_motivacaoA, _motivacaoB)),
    VerseCategory(id: 'superacao', name: 'Superação', emoji: '💪', gradient: _superacao, verses: _mix(_superacaoA, _superacaoB)),
    VerseCategory(id: 'sabedoria', name: 'Sabedoria', emoji: '🦉', gradient: _sabedoria, verses: _mix(_sabedoriaA, _sabedoriaB)),
    VerseCategory(id: 'amoravida', name: 'Amor à Vida', emoji: '❤️', gradient: _amoravida, verses: _mix(_amoravidaA, _amoravidaB)),
    VerseCategory(id: 'paz', name: 'Paz e Serenidade', emoji: '🕊️', gradient: _paz, verses: _mix(_pazA, _pazB)),
    VerseCategory(id: 'bomdia', name: 'Bom Dia', emoji: '☀️', gradient: _bomdia, verses: _mix(_bomdiaA, _bomdiaB)),
    VerseCategory(id: 'boanoite', name: 'Boa Noite', emoji: '🌙', gradient: _boanoite, verses: _mix(_boanoiteA, _boanoiteB)),
    VerseCategory(id: 'pensamentos', name: 'Pensamentos', emoji: '💭', gradient: _pensamentos, verses: _mix(_pensamentosA, _pensamentosB)),
    VerseCategory(id: 'gratidao', name: 'Gratidão', emoji: '🙌', gradient: _gratidao, verses: _mix(_gratidaoA, _gratidaoB)),
    VerseCategory(id: 'curtas', name: 'Frases Curtas', emoji: '🌱', gradient: _curtas, verses: _mix(_curtasA, _curtasB)),
    VerseCategory(id: 'atitude', name: 'Foco e Atitude', emoji: '🎯', gradient: _atitude, verses: _mix(_atitudeA, _atitudeB)),
    VerseCategory(id: 'recomeco', name: 'Recomeço', emoji: '🌅', gradient: _recomeco, verses: _mix(_recomecoA, _recomecoB)),
    VerseCategory(id: 'fotos', name: 'Legendas para Fotos', emoji: '📸', gradient: _fotos, verses: _mix(_fotosA, _fotosB)),
    VerseCategory(id: 'status', name: 'Frases para Status', emoji: '💬', gradient: _status, verses: _mix(_statusA, _statusB)),
    VerseCategory(id: 'amorproprio', name: 'Amor Próprio', emoji: '💖', gradient: _amorproprio, verses: _mix(_amorproprioA, _amorproprioB)),
    VerseCategory(id: 'positivas', name: 'Frases Positivas', emoji: '✨', gradient: _positivas, verses: _mix(_positivasA, _positivasB)),
    VerseCategory(id: 'indiretas', name: 'Indiretas', emoji: '🎯', gradient: _indiretas, verses: _mix(_indiretasA, _indiretasB)),
    VerseCategory(id: 'inteligentes', name: 'Frases Inteligentes', emoji: '🧠', gradient: _inteligentes, verses: _mix(_inteligentesA, _inteligentesB)),
    VerseCategory(id: 'profunda', name: 'Sabedoria Profunda', emoji: '🌌', gradient: _profunda, premium: true, verses: _mix(_profundaA, _profundaB)),
    VerseCategory(id: 'refletir', name: 'Frases para Refletir', emoji: '🍃', gradient: _refletir, premium: true, verses: _mix(_refletirA, _refletirB)),
    VerseCategory(id: 'forca', name: 'Superação (Força)', emoji: '⛰️', gradient: _forca, premium: true, verses: _mix(_forcaA, _forcaB)),
  ];

  static List<Verse> get all => [for (final c in categories) ...c.verses];

  static List<Verse> get freeVerses =>
      [for (final c in categories) if (!c.premium) ...c.verses];

  static VerseCategory categoryById(String id) =>
      categories.firstWhere((c) => c.id == id, orElse: () => categories.first);
}
