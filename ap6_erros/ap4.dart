void main () {
  try {
    // Nome do arquivo que será utilizado
    final nome = "dados.txt";
    // Criando um objeto da classe ArquivoTexto
    final arquivo = ArquivoTexto(nome);
    // Tentando abrir o arquivo
    arquivo.abrir();
  } catch (e) {
    // Captura e exibe a exceção lançada pelo método abrir
    print(e);
  }
  // Executado ao final do programa
  print("Fim do programa");
}
// Interface que define o método abrir
abstract class Arquivo {
  // Método que deverá ser implementado pelas classes que utilizarem esta interface
  void abrir();
}
// Classe que representa um arquivo de texto
class ArquivoTexto implements Arquivo {
  // Construtor que recebe o nome do arquivo
  ArquivoTexto(this._nome);
  // Atributo privado que armazena o nome do arquivo
  final String _nome;
  @override
  void abrir() {
    try {
      // Simula um erro ao abrir o arquivo
      throw Exception("Erro ao abrir o arquivo $_nome");
    } catch (e) {
      // Exibe uma mensagem informando que a exceção será relançada
      print('Relançar a exception');
      // Relança a exceção para ser tratada no main()
      rethrow;
    }
  }
}