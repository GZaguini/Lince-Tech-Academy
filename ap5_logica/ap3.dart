import 'dart:math';

void main() {
  // Cria uma instância da classe Random para gerar números aleatórios
  final radom = Random();

  // Gera um número aleatório entre 100 e 999
  final numero = radom.nextInt(900) + 100;

  // Chama a função somaPares passando o número gerado
  final soma = somaPares(numero);

  // Imprime o resultado da soma dos números pares
  print("A soma dos números pares entre 0 e $numero é $soma");
}

// Função que calcula a soma de todos os números pares até o número informado
int somaPares(int numero) {

  // Variável que vai acumular a soma dos números pares
  int soma = 0;

  // Loop que percorre todos os números de 0 até o valor informado
  for (int i = 0; i <= numero; i++) {

    // Verifica se o número atual é par
    if (i.isEven) {

      // Se for par, adiciona na soma
      soma += i;
    }
  }

  // Retorna o resultado final da soma
  return soma;
}