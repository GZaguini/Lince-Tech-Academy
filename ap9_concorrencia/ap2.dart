import 'dart:async';

// Função principal do programa
Future<void> main() async {

  // Lista contendo as URLs das imagens
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  // Inicia o download das imagens
  await baixarImagens(urls);
}
// Função responsável por simular o download de uma imagem
Future<void> baixarImagem(String url) async {

  // Aguarda 2 segundos para simular o tempo de download
  await Future.delayed(Duration(seconds: 2));

  // Exibe uma mensagem informando que a imagem foi baixada
  print('Imagem $url baixada com sucesso!');

}
// Função responsável por baixar todas as imagens da lista
Future<void> baixarImagens(List<String> urls) async {

  // Informa o início do processo de download
  print('Baixando imagens...');

  // Percorre todas as URLs da lista
  for (String url in urls) {
    // Aguarda o download da imagem atual antes de continuar
    await baixarImagem(url);
  }
  // Exibe uma mensagem ao finalizar todos os downloads
  print('Download concluído com sucesso!');

}