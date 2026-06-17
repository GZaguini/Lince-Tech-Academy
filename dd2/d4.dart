import 'dart:math' as math;

void main() {
  // Classe responsável por comparar formas geométricas
  final comparador = ComparadorFormasGeometricas();

 // Lista contendo todas as formas geométricas do sistema
 final formas = <FormaGeometrica>[Circulo('circulo', 4),Retangulo('retangulo', 5, 6),Quadrado('Quadrado', 8),TrianguloEquilatero('Triangulo Equilatero', 6),
 TrianguloRetangulo('Triangulo Rentangulo', 5, 8),HexagonoRegular('Hexagono', 5), PentagonoRegular('Pentagono', 3) ];

 // Obtém a forma com maior área
final maiorArea = comparador.formaDeMaiorArea(formas);

 // Obtém a forma com maior perímetro
final maiorPerimetro = comparador.formaDeMaiorPerimetro(formas);

print(
  'Maior área: ${maiorArea.nome} '
  '(${maiorArea.area.toStringAsFixed(2)})',
);

print(
  'Maior perímetro: ${maiorPerimetro.nome} '
  '(${maiorPerimetro.perimetro.toStringAsFixed(2)})',
);
}


abstract class FormaGeometrica {
  FormaGeometrica(this.nome);

  final String nome;

  double get area;
  double get perimetro;
}

// Representa um círculo
class Circulo extends FormaGeometrica{

  /// Construtor padrao, recebe o [raio] do círculo.
  Circulo(String nome, this.raio) : super(nome);

  final double raio;

  /// Retorna a area desse círculo
  double get area => math.pi * math.pow(raio, 2);

  /// Retorna o perímetro desse círculo
  double get perimetro => 2 * math.pi * raio;
}

// Representa um retângulo
class Retangulo extends FormaGeometrica{
  /// Construtor padrao, recebe a [altura] e [largura] do retângulo
  Retangulo(String nome, this.altura, this.largura) : super(nome);

  final double largura;
  final double altura;

  /// Retorna a area desse círculo
  double get area => altura * largura;

  /// Retorna o perímetro desse círculo
  double get perimetro => (altura * 2) + (largura * 2);
}

// Representa um quadrado
class Quadrado extends FormaGeometrica{
  /// Construtor padrao, recebe o [lado] do quadrado
  Quadrado(String nome, this.lado) : super(nome);

 
  final double lado;

  /// Retorna a area desse quadrado
  double get area => lado * lado;

  /// Retorna o perímetro desse quadrado
  double get perimetro => lado * 4;
}
// Representa um triângulo equilátero
class TrianguloEquilatero extends FormaGeometrica {
  TrianguloEquilatero(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double get area => (math.sqrt(3) / 4) * lado * lado;

  @override
  double get perimetro => lado * 3;
}

// Representa um triângulo retângulo
class TrianguloRetangulo extends FormaGeometrica {
  TrianguloRetangulo(
    String nome,
    this.base,
    this.altura,
  ) : super(nome);

  final double base;
  final double altura;

  @override
  double get area => (base * altura) / 2;

  @override
  double get perimetro {
    final hipotenusa =
        math.sqrt(math.pow(base, 2) + math.pow(altura, 2));

    return base + altura + hipotenusa;
  }
}

// Representa um hexágono regular
class HexagonoRegular extends FormaGeometrica {
  HexagonoRegular(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double get area =>
      ((3 * math.sqrt(3)) / 2) * lado * lado;

  @override
  double get perimetro => lado * 6;
}

// Representa um pentágono regular
class PentagonoRegular extends FormaGeometrica {
  PentagonoRegular(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double get area =>
      (5 * lado * lado) /
      (4 * math.tan(36 * math.pi / 180));

  @override
  double get perimetro => lado * 5;
}

// Responsável por comparar formas geométricas
class ComparadorFormasGeometricas {

// Retorna a forma com a maior área da lista
  FormaGeometrica formaDeMaiorArea(
      List<FormaGeometrica> formas) {

    var maior = formas.first;

    for (var forma in formas) {
      if (forma.area > maior.area) {
        maior = forma;
      }
    }

    return maior;
  }

// Retorna a forma com o maior perímetro da lista
  FormaGeometrica formaDeMaiorPerimetro(
      List<FormaGeometrica> formas) {

    var maior = formas.first;

    for (var forma in formas) {
      if (forma.perimetro > maior.perimetro) {
        maior = forma;
      }
    }

    return maior;
  }
}
