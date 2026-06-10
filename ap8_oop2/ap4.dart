import 'dart:math';

void main() {

  // Criando um objeto para gerar números aleatórios
  final random = Random();

  // Gerando um número aleatório entre 0 e 99
  final numero = random.nextInt(100);

  // Chamando o método estático dobro da classe Calculadora
  final resultado = Calculadora.dobro(numero);

  // Exibindo o número gerado e o seu dobro
  print("O dobro do número $numero e: $resultado");

}
// Classe abstrata que contém métodos utilitários
abstract class Calculadora {

  // Método estático que recebe um número e retorna seu dobro
  static int dobro(int numero) {

    // Multiplica o número por 2 e retorna o resultado
    return numero * 2;
  }
}