import 'dart:async';

// Função que simula uma consulta em uma API
Future<String> consultarAPI(String codigoRastreamento) async {

  // Aguarda 2 segundos para simular o tempo de resposta da API
  await Future.delayed(Duration(seconds: 2));

  // Verifica o código de rastreamento informado
  if (codigoRastreamento == 'ABC123') {
    return 'Em transito';
  } else if (codigoRastreamento == 'XYZ789') {
    return 'Entregue';
  } else if (codigoRastreamento == 'DEF456') {
    return 'Atrasado';
  } else {
    return 'Código de rastreamento invalido';
  }
}
// Função responsável por consultar e exibir o status da entrega
Future<void> verificarStatusEntrega(String codigoRastreamento) async {

  // Aguarda o retorno da consulta da API
  String status = await consultarAPI(codigoRastreamento);

  // Exibe o status encontrado
  print('Status de entrega do pacote $codigoRastreamento: $status');

}

// Função principal do programa
Future<void> main() async {

  // Início da execução
  print('Inicio');

  // Consulta o status do primeiro pacote
  await verificarStatusEntrega('ABC123');

  // Consulta o status do segundo pacote
  await verificarStatusEntrega('XYZ789');

  // Consulta o status do terceiro pacote
  await verificarStatusEntrega('DEF456');

  // Final da execução
  print('Fim');
}