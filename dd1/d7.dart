void main() {

  // Lista de números fornecida pelo exercício
  final numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  // Calcula a soma utilizando o comando for
  final resultadoFor = somarFor(numeros);

  // Calcula a soma utilizando o comando while
  final resultadoWhile = SomarWhile(numeros);

  // Calcula a soma utilizando recursão
  final resultadoRecursao = SomarRecursao(numeros, 0);

  // Calcula a soma utilizando um método de coleção (reduce)
  final resultadoLista = SomarLista(numeros);

  // Exibe os resultados no console
  print("for: $resultadoFor");
  print("while: $resultadoWhile");
  print("recursão: $resultadoRecursao");
  print("lista: $resultadoLista");
}

// Soma os elementos da lista utilizando o comando for
int somarFor(List<int> numeros) {
  var somaFor = 0;

  // Percorre todos os números da lista
  for (var numero in numeros) {

    // Adiciona o valor atual à soma
    somaFor += numero;
  }

  // Retorna o resultado da soma
  return somaFor;
}

// Soma os elementos da lista utilizando o comando while
int SomarWhile(List<int> numeros) {
  var somaWhile = 0;
  var indice = 0;

  // Percorre a lista enquanto o índice for válido
  while (indice < numeros.length) {

    // Soma o valor da posição atual
    somaWhile += numeros[indice];
    indice++;
  }
  // Retorna o resultado da soma
  return somaWhile;
}

// Soma os elementos da lista utilizando recursão
int SomarRecursao(List<int> numeros, int indice) {

  // Caso base: chegou ao final da lista
  if (indice >= numeros.length) {
    return 0;
  }

  // Soma o valor atual com o restante da lista
  return numeros[indice] + SomarRecursao(numeros, indice + 1);
}

// Soma os elementos da lista utilizando o método reduce
int SomarLista(List<int> numeros) {

  // O reduce percorre a lista acumulando os valores
  return numeros.reduce((acumulador, numero) {

    // Soma o acumulador com o número atual
    return acumulador + numero;
  });
}