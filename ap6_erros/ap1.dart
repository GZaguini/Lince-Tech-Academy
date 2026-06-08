void main() {

  // Cghamada da função com uma String que pode ser convertida para inteiro
  programa("123");

}

// Função que recebe uma String e tenta convertê-la para inteiro
void programa(String numero) {

  try {

    // Converte a String para int
    int i = int.parse(numero);

    // Exibe o número convertido
    print("Numero digitado: $i");

  } catch (e) {

    // Executado caso a conversão falhe
    print("Entrada invalida, digite um numero inteiro");

  }

}