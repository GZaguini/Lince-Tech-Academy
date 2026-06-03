import 'dart:math';

void main() {
  final random = Random();

  // Gera 5 números aleatórios de 1 a 26
  for (int i = 0; i < 5; i++) {
    int numero = random.nextInt(26) + 1;

    String letra = numeroParaLetra(numero);

    print("Numero $numero -> Letra $letra");
  }
}

// Função que converte número em letra
String numeroParaLetra(int numero) {
  // Lista com o alfabeto
  List<String> alfabeto = [
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
    'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
    'W', 'X', 'Y', 'Z'
  ];

  // Retorna a letra correspondente (numero - 1 porque lista começa em 0)
  return alfabeto[numero - 1];
}