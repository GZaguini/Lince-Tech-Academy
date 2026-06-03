import 'dart:math';

void main() {
  // Cria uma instância da classe Random para gerar números aleatórios
  final random = Random();

  // Loop que será executado 5 vezes para gerar 5 números aleatórios
  for (int i = 0; i < 5; i++) {

    // Gera um número aleatório entre 1 e 26
    int numero = random.nextInt(26) + 1;

    // Converte o número gerado para a letra correspondente do alfabeto
    String letra = numeroParaLetra(numero);

    // Imprime o número gerado e a letra correspondente
    print("Numero $numero -> Letra $letra");
  }
}

// Função responsável por converter um número em letra do alfabeto
String numeroParaLetra(int numero) {

  // Lista contendo todas as letras do alfabeto em ordem
  List<String> alfabeto = [
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
    'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
    'W', 'X', 'Y', 'Z'
  ];

  // Ajusta o índice porque a lista começa em 0 (então subtrai 1)
  // Ex: 1 -> A (posição 0), 2 -> B (posição 1)
  return alfabeto[numero - 1];
}