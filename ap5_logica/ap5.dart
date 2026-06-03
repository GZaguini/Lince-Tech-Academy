import 'dart:math';

void main() {
  // Cria uma instância da classe Random para gerar números aleatórios
  final random = Random();

  // Gera um número aleatório entre 0 e 5
  final opcao = random.nextInt(6);

  // Estrutura switch que verifica o valor da variável "opcao"
  switch (opcao) {

    // Caso o número seja 0
    case 0:
      print('Opcao invalida');
      break;

    // Caso o número seja 1
    case 1:
      print('Encontrado 1');
      break;

    // Caso o número seja 2
    case 2:
      print('Encontrado 2');
      break;

    // Caso o número seja 3
    case 3:
      print('Encontrado 3');
      break;

    // Caso o número seja 4
    case 4:
      print('Encontrado 4');
      break;

    // Caso o número seja 5
    case 5:
      print('Encontrado final');
      break;

    // Caso não se encaixe em nenhum dos casos acima
    default:
      print('Opcao invalida');
  }
}