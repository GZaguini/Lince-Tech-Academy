import 'dart:collection';

void main() {
  // Cria um novo baralho vazio
  final baralho = Baralho();

  // Empilha as cartas na ordem solicitada
  baralho.empilhar(Carta('A', Naipe.paus));
  baralho.empilhar(Carta('A', Naipe.copas));
  baralho.empilhar(Carta('A', Naipe.espadas));
  baralho.empilhar(Carta('A', Naipe.ouros));

  // Enquanto houver cartas no baralho
  while (baralho._cartas.isNotEmpty) {
    // Remove a carta que está no topo
    final carta = baralho.remover();

    // Exibe a carta removida
    print('${carta.valor} de ${carta.naipe.simbolo}');
  }
}

// Enum que representa os naipes válidos
enum Naipe {
  paus('♣'),
  copas('♥'),
  espadas('♠'),
  ouros('♦');

  // Símbolo do naipe
  final String simbolo;

  // Construtor do enum
  const Naipe(this.simbolo);
}

// Classe que representa uma carta
class Carta {
  Carta(this.valor, this.naipe);

  // Valor da carta (A, K, Q, J, etc.)
  final String valor;

  // Naipe da carta
  final Naipe naipe;
}

// Classe responsável por controlar o baralho
class Baralho {
  // Queue utilizada para armazenar as cartas
  final _cartas = Queue<Carta>();

  // Adiciona uma carta ao topo do baralho
  void empilhar(Carta carta) {
    _cartas.addLast(carta);
  }

  // Remove a carta que está no topo do baralho
  Carta remover() {
    return _cartas.removeLast();
  }
}