import 'dart:math';

void main() {
  final random = Random();

  // Criando as listas aleatórias
  final lista1 =
      List.generate(5, (_) => random.nextInt(101));

  final lista2 =
      List.generate(5, (_) => random.nextInt(101));

  // Imprimindo as listas
  imprimirLista(lista1);
  imprimirLista(lista2);

  // Chamando a função que soma as listas
  final resultado = somarListas(lista1, lista2);

  // Imprimindo lista final
  imprimirLista(resultado);
}

// Função para imprimir listas
void imprimirLista(List<int> lista) {

  // Validação
  if (lista.isEmpty) {
    print('Lista vazia');
    return;
  }

  print('Lista: ${lista.join(', ')}');
}

// Função para somar listas
List<int> somarListas(
  List<int> lista1,
  List<int> lista2,
) {

  // Validação
  if (lista1.length != lista2.length) {
    return [];
  }

  final resultado = <int>[];

  // Percorrendo as listas
  for (int i = 0; i < lista1.length; i++) {

    final soma = lista1[i] + lista2[i];

    // Mostrando a operação
    print('${lista1[i]} + ${lista2[i]}');

    // Adicionando resultado
    resultado.add(soma);
  }

  return resultado;
}