import 'dart:collection';
import 'dart:math';
void main (){
final figurasDisponiveis = <Figura>[
  Figura(1, 'Lionel Messi'),
  Figura(2, 'Kylian Mbappé'),
  Figura(3, 'Vinicius Junior'),
  Figura(4, 'Jude Bellingham'),
  Figura(5, 'Harry Kane'),
  Figura(6, 'Rodri'),
  Figura(7, 'Lautaro Martínez'),
  Figura(8, 'Federico Valverde'),
  Figura(9, 'Pedri'),
  Figura(10, 'Bruno Fernandes'),
  Figura(11, 'Raphinha'),
  Figura(12, 'Alisson Becker'),
  Figura(13, 'Emiliano Martínez'),
  Figura(14, 'Erling Haaland'),
  Figura(15, 'Kevin De Bruyne'),
  Figura(16, 'Bukayo Saka'),
  Figura(17, 'Julian Álvarez'),
  Figura(18, 'Achraf Hakimi'),
  Figura(19, 'Son Heung-min'),
  Figura(20, 'Cristiano Ronaldo'),
];


final album = Album();

while (!album.completo) {

  final pacote = PacoteDeFiguras.gerarPacote(figurasDisponiveis);

  for (var figura in pacote.figuras) {
    album.adicionarFigura(figura);
  }
}
  print('Figuras repetidas: ${album.repetidas.length}');
  album.imprimirAlbum();
}

class Figura {
  Figura(this.codigo, this.nome);

  final int codigo;
  final String nome;
}

class Album {
  final figuras = HashMap<int, Figura>();
  final repetidas = <Figura>[];

  void adicionarFigura(Figura figura) {
    if (figuras.containsKey(figura.codigo)) {
      repetidas.add(figura);
    } else {
      figuras[figura.codigo] = figura;
    }
  }

  bool get completo => figuras.length == 20;
  void imprimirAlbum() {
  final codigos = figuras.keys.toList();

  codigos.sort();

  for (var codigo in codigos) {
    final figura = figuras[codigo]!;

    print('${figura.codigo} - ${figura.nome}');
  }
}
}
class PacoteDeFiguras {
  final List<Figura> figuras;

  PacoteDeFiguras(this.figuras);

  static PacoteDeFiguras gerarPacote(
      List<Figura> figurasDisponiveis) {

    final random = Random();
    final pacote = <Figura>[];

    for (var i = 0; i < 4; i++) {
      final figura =
          figurasDisponiveis[random.nextInt(figurasDisponiveis.length)];

      pacote.add(figura);
    }

    return PacoteDeFiguras(pacote);
  }
}