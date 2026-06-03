void main() {
  // Lista com vários nomes, incluindo repetidos
  final listaNomes = [
    "Joao",
    "Maria",
    "Pedro",
    "Maria",
    "Ana",
    "Joao",
    "Maria",
    "Fernanda",
    "Carlos",
    "Maria"
  ];

  // Nome que será procurado dentro da lista
  final nome = 'Ana';

  // Chama a função que conta quantas vezes o nome aparece na lista
  final quantidade = contarNome(listaNomes, nome);

  // Verifica o resultado e imprime uma mensagem adequada
  if (quantidade == 1) {
    print('O nome $nome foi encontrado 1 vez');
  } 
  else if (quantidade > 0) {
    print('O nome $nome foi encontrado $quantidade vezes');
  } 
  else {
    print('O nome nao foi encontrado');
  }
}

// Função que conta quantas vezes um nome aparece na lista
int contarNome(List<String> lista, String nome) {

  // Variável que armazena a quantidade de vezes que o nome aparece
  int quantidade = 0;

  // Percorre cada nome dentro da lista
  for (String n in lista) {

    // Verifica se o nome atual é igual ao nome procurado
    if (n == nome) {

      // Se for igual, incrementa a quantidade
      quantidade++;
    }
  }

  // Retorna o total de ocorrências encontradas
  return quantidade;
}