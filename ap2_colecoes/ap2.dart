import 'dart:math';
void main (){
// Gerar uma lista de 50 números aleatórios entre 1 e 15
final random = Random();
final lista = List.generate(50, (_) => random.nextInt(15) + 1);

// Exibir a lista original
print("Lista original: $lista");
// Remover os números pares da lista
 lista.removeWhere( (n) => n % 2 == 0);
//  Exibir a lista após a remoção dos números pares
  print("Lista após remoção dos pares: $lista");
}