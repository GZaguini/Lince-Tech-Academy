import 'dart:math';

void main() {
  // Gerando uma lista de 15 números decimais aleatórios entre 1 e 5000
  final random = Random();
  final lista = List.generate(15, (_) => random.nextInt(5000) + 1);

// Ordenando a lista em ordem crescente
lista.sort();

// Convertendo cada número decimal para binário, octal e hexadecimal e imprimindo os resultados
  for(var decimal in lista){
    final binario = converterBinario(decimal);
    final octal = converterOctal(decimal);
    final hexadecimal = converterHexadecimal(decimal);
    // Imprimindo os resultados
    print('Decimal: $decimal, Binário: $binario, Octal: $octal, Hexadecimal: $hexadecimal');
  }

}
// Função para converter um número decimal para binário
String converterBinario (int numero){
    return numero.toRadixString(2) ;
}
// Função para converter um número decimal para octal
String converterOctal (int numero){
  return numero.toRadixString(8) ;
}
//  Função para converter um número decimal para hexadecimal
String converterHexadecimal (int numero){
  return numero.toRadixString(16) ;
}

