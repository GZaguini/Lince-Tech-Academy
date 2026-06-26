import 'dart:io';


class RelatorioBuffer {
  final StringBuffer _buffer = StringBuffer();

  void escrever(String texto) {
    print(texto);
    _buffer.writeln(texto);
  }

  String get conteudo => _buffer.toString();

  void limpar() {
    _buffer.clear();
  }
}

class SalvarArquivo {

  Future<void> salvar(
    String nomeArquivo,
    String conteudo,
  ) async {

    final pasta = Directory('relatorios');

    if (!await pasta.exists()) {
      await pasta.create();
    }

    final arquivo = File('relatorios/$nomeArquivo');

    await arquivo.writeAsString(conteudo);

    print('\nArquivo salvo: ${arquivo.path}');
  }
}