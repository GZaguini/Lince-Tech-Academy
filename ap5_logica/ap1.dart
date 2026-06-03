void main() {
// Chama a função imparesAte com o número 10 e armazena o resultado em uma variável
  final lista = imparesAte(10);
  // Percorre cada número dentro da lista
  for (var numero in lista) {
    // Imprime o número ímpar
    print("Impar: $numero");
  }
}
// Cria uma função que recebe um número inteiro e retorna uma lista de números ímpares até esse número
List<int> imparesAte(int numero) {
// Cria uma lista vazia para armazenar os números ímpares
  List<int> lista = [];
// Percorre os números de 0 até o número fornecido
  for (int i = 0; i <= numero; i++) {
    // Verifica se o número é ímpar usando o método isOdd
    if (i.isOdd) {
        // Adiciona o número ímpar à lista
      lista.add(i);
    }
  }
//   Retorna a lista de números ímpares
  return lista;
}

