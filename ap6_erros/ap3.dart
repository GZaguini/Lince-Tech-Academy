import 'dart:math';

void main() {
  // Criando um objeto para gerar números aleatórios
  final random = Random();
  try {
    // Criando um retângulo com base e altura aleatórias entre 0 e 99
    final retangulo = Retangulo(
      random.nextDouble() * 99,
      random.nextDouble() * 99,
    );
    // Calculando a área do retângulo
    double area = retangulo.calcularArea();
    // Exibindo a área com duas casas decimais
    print("Area do retângulo: ${area.toStringAsFixed(2)}");
  } on Exception catch (e) {
    // Captura e exibe a mensagem da exceção caso ocorra erro
    print(e);
  }
}
// Classe abstrata que define o método calcularArea
abstract class Forma {
  // Método que deverá ser implementado pelas classes que utilizarem Forma
  double calcularArea();
}
// Classe Retangulo que implementa a classe abstrata Forma
class Retangulo implements Forma {
  // Construtor que recebe base e altura
  Retangulo(this.base, this.altura) {

    // Verifica se as dimensões são válidas
    if (base <= 0 || altura <= 0) {

      // Lança uma exceção caso base ou altura sejam menores ou iguais a zero
      throw Exception(
        'Dimensões inválidas, informe apenas valores positivos maiores que zero',
      );

    }
  }

  // Atributos do retângulo
  final double base;
  final double altura;

  // Implementação do método calcularArea da classe Forma
  @override
  double calcularArea() {

    // Retorna a área do retângulo
    return base * altura;

  }
}