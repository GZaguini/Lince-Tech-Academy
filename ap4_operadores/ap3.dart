void main () {
  // Lista de nomes para remover um elemento
final nomes = ['João', 'Maria', 'Pedro', 'Ana', 'Carlos'];

  // Chamando a função para remover o elemento 'Pedro' da lista de nomes
  final novaLista = removerElemento(lista : nomes,elemento : 'Pedro');
  // Imprimindo a nova lista após a remoção do elemento
  for (var nome in novaLista) {
    print('Lista: $nome');
  }
}
// Função para remover um elemento de uma lista de strings
List<String> removerElemento ({List<String>? lista, String? elemento}) {
  //Removendo o elemento da Lista
  lista?.remove(elemento);
  // Retornando a lista modificada ou uma lista vazia se a lista original for nula
  return lista ?? [];
}