import 'dart:math';
void main (){
  // Gerar uma lista de 50 números aleatórios entre 12 e 21
  final random = Random();
  final lista = List.generate(50, (_) => random.nextInt(10) + 12);
  
  // Exibir a lista original
  print("Lista original: $lista");

  // Remover os números duplicados da lista
  final itemUnico = lista.toSet();

  // Exibir a lista após a remoção dos números duplicados
  print("Itens únicos: $itemUnico");

}