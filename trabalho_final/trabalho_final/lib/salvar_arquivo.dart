import 'dart:io';
import 'package:intl/intl.dart';

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

  String gerarNomeArquivo(String tipo) {
    final agora = DateTime.now();

    final dataHora = DateFormat(
      'yyyy-MM-dd_HH-mm',
    ).format(agora);

    return '${tipo}_$dataHora.txt';
  }

  Future<void> salvar(
  String nomeArquivo,
  String conteudo,
) async {
  print(Directory.current.path);
  final pasta = Directory('relatorios');

  if (!await pasta.exists()) {
    await pasta.create();
  }

  final arquivo = File('${pasta.path}/$nomeArquivo');

  await arquivo.writeAsString(conteudo);

  print('\nArquivo salvo em: ${arquivo.path}');
}
}
