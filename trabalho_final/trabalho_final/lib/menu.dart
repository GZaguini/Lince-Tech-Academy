import 'dart:io';

import 'leitura_arquivo.dart';
import 'relatorios.dart';

// Classe responsável por exibir o menu e chamar os relatórios.
class Menu {

  Future<void> mostrar() async {

    final leitor = LeitorArquivo();
    final relatorio = Relatorios();

    try{
    // Carrega todas as leituras dos arquivos CSV.
    final leituras = await leitor.lerTodosArquivos(
      'C:/Users/guilh/OneDrive/Desktop/Clima/sensores',
    );
     // Verifica se existem dados para processar.
    if (leituras.isEmpty) {
    print('Nenhum arquivo encontrado.');
    return;
    }
    // Separa as leituras por estado.
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
      // Exibe as opções disponíveis para o usuário.
      print('\n===== MENU =====');
      print('1 - Temperatura');
      print('2 - Umidade');
      print('3 - Direção do vento');
      print('4 - Sair');

      try {
      final opcao = int.parse(stdin.readLineSync()!);
      // Lê a opção digitada pelo usuário.
      switch (opcao) {
     
      case 1:
        // Relatórios de temperatura.
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
      // Relatórios de umidade e velocidade do vento.
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
      // Relatórios de direção do vento.
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
       // Encerra o programa.
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
