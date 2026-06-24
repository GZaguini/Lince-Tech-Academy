import 'dart:convert';
import 'dart:io';
import 'leituraClimatica.dart';


class LeitorArquivo {
  
 Future<List<LeituraClimatica>> lerTodosArquivos(
  String pasta,
) async {

  final diretorio = Directory(pasta);

  final leituras = <LeituraClimatica>[];

  await for (final entidade in diretorio.list()) {

    if (entidade is File &&
        entidade.path.endsWith('.csv')) {

      final dadosArquivo =
          await lerLeituras(entidade.path);

      leituras.addAll(dadosArquivo);
    }
  }

  return leituras;
}

  Future<List<String>> lerArquivo(String caminho) async {
    final arquivo = File(caminho);

    final bytes = await arquivo.readAsBytes();

    final texto = latin1.decode(bytes);

    return const LineSplitter().convert(texto);
  }

 Future<List<LeituraClimatica>> lerLeituras(
  String caminho,
) async {

  final linhas = await lerArquivo(caminho);

  final leituras = <LeituraClimatica>[];

  final nomeArquivo = File(caminho).uri.pathSegments.last;
  final partes = nomeArquivo.replaceAll('.csv', '').split('_');

  final estado = partes[0];
  final ano = int.parse(partes[1]);

  for (final linha in linhas.skip(1)) {

    final dados = linha.split(',');

    final mes = int.parse(dados[0]);
    final dia = int.parse(dados[1]);
    final hora = int.parse(dados[2]);

    final temperatura = double.parse(dados[3]);
    final umidade = double.parse(dados[4]);
    final densidadeAr = double.parse(dados[5]);

    final velocidadeVento = double.parse(dados[6]);
    final direcaoVento = double.parse(dados[7]);

    leituras.add(
      LeituraClimatica(
        estado,
        ano,
        mes,
        dia,
        hora,
        temperatura,
        umidade,
        densidadeAr,
        velocidadeVento,
        direcaoVento,
      ),
    );
  }

  return leituras;
}


}