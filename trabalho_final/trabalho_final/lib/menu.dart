import 'dart:io';

import 'leitura_arquivo.dart';
import 'relatorios.dart';


class Menu {

  Future<void> mostrar() async {

    final leitor = LeitorArquivo();
    final relatorio = Relatorios();

    try{
    
    final leituras = await leitor.lerTodosArquivos(
      'C:/Users/guilh/OneDrive/Desktop/Clima/sensores',
    );
    if (leituras.isEmpty) {
    print('Nenhum arquivo encontrado.');
    return;
    }
   
    final leiturasSC =
        relatorio.filtrarPorEstado(
      leituras,
      'SC',
    );

    final leiturasSP =
        relatorio.filtrarPorEstado(
      leituras,
      'SP',
    );
    
  
    print('\nOlá, Marcelo!');
    print('Que relatório você precisa?\n');

    while (true) {

      print('\n===== MENU =====');
      print('1 - Temperatura');
      print('2 - Umidade');
      print('3 - Direção do vento');
      print('4 - Sair');

      try {
      final opcao = int.parse(stdin.readLineSync()!);

      switch (opcao) {
     
      case 1:

        relatorio.imprimirRelatorioAnual(
          leiturasSC,
          'SC',
        );

        relatorio.imprimirRelatorioAnual(
          leiturasSP,
          'SP',
        );

        relatorio.imprimirRelatorioMensal(
          leiturasSC,
          'SC',
        );

        relatorio.imprimirRelatorioMensal(
          leiturasSP,
          'SP',
        );

        relatorio.imprimirTemperaturaPorHorario(
          leiturasSC,
          'SC',
        );

        relatorio.imprimirTemperaturaPorHorario(
          leiturasSP,
          'SP',
        );

        break;

      case 2:
         print('\n===== UMIDADE =====');
        relatorio.imprimirRelatorioUmidadeAnual(
          leiturasSC,
          'SC',
        );

        relatorio.imprimirRelatorioUmidadeAnual(
          leiturasSP,
          'SP',
        );

        relatorio.imprimirRelatorioUmidadeMensal(
          leiturasSC,
          'SC',
        );

        relatorio.imprimirRelatorioUmidadeMensal(
          leiturasSP,
          'SP',
        );
        
        print('\n===== VELOCIDADE DO VENTO =====');
        
        relatorio.imprimirVelocidadeAnual(leiturasSC, 'SC');
        
        relatorio.imprimirVelocidadeAnual(leiturasSP, 'SP');

        relatorio.imprimirVelocidadeMensal(leiturasSC, 'SC');

        relatorio.imprimirVelocidadeMensal(leiturasSP, 'SP');

        break;

      case 3:

        relatorio.imprimirDirecaoAnual(
          leiturasSC,
          'SC',
        );

        relatorio.imprimirDirecaoAnual(
          leiturasSP,
          'SP',
        );

        relatorio.imprimirDirecaoMensal(
          leiturasSC,
          'SC',
        );

        relatorio.imprimirDirecaoMensal(
          leiturasSP,
          'SP',
        );
        break;
      case 4: 
      print('Finalizado');
      return;
    }
     } catch (e) {
    print('Digite um número válido entre 1 a 4.');
      }
  }
   }catch(e) {
  print('Falha ao ler os arquivos.');
  return;
    }
}

  }
