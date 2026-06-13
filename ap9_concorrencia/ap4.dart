void main() async {

  // Exibe uma mensagem informando o início da busca
  print("Inicinaod busca de dados");
  // Aguarda 2 segundos antes de iniciar a busca
  await delay();
  // Exibe uma mensagem indicando que os dados estão sendo buscados
  print("Buscando Dados....");
  // Aguarda a conclusão da busca dos dados
  await BuscarDados();
  // Exibe uma mensagem informando o término da busca
  print('Busca finalizada');

}
// Função assíncrona que simula a busca de dados
Future<void> BuscarDados() async {

  // Aguarda 5 segundos para simular o tempo de busca
  await Future.delayed(Duration(seconds: 5));
}

// Função assíncrona que cria um atraso inicial
Future<void> delay() async {
  // Aguarda 2 segundos antes de continuar a execução
  await Future.delayed(Duration(seconds: 2));

}