void main() {

  // Lista de números fornecida pelo exercício
  final numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];

  // Ordena a lista em ordem crescente
  numeros.sort();

  // Percorre cada número da lista
  for (var decimal in numeros) {

    // Converte o número para binário
    final binario = ConverterBinario(decimal);

    // Converte o número para octal
    final octal = ConverterOctal(decimal);

    // Converte o número para hexadecimal
    final hexadecimal = ConverterHexadecimal(decimal);

    // Exibe todas as representações do número
    print( "decimal: $decimal, ""binário: $binario, ""octal: $octal, ""hexadecimal: $hexadecimal");
  }
}

// Função responsável por converter um número decimal para binário
String ConverterBinario(int numeros) {
  return numeros.toRadixString(2);
}

// Função responsável por converter um número decimal para octal
String ConverterOctal(int numeros) {
  return numeros.toRadixString(8);
}

// Função responsável por converter um número decimal para hexadecimal
String ConverterHexadecimal(int numeros) {
  return numeros.toRadixString(16);
}