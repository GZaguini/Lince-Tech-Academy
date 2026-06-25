import 'leituraClimatica.dart';
import 'converso.dart';
import 'package:yaansi/yaansi.dart';


// Calcula a média das temperaturas da lista.
class Relatorios {
double mediaTemperatura(List<LeituraClimatica> leituras) {

   if (leituras.isEmpty) {
    throw Exception('Lista de leituras vazia');
  }

  double soma = 0;

  for (final leitura in leituras) {
    soma += leitura.temperatura;
  }

  return soma / leituras.length;
}
// Retorna a maior temperatura encontrada.
double temperaturaMaxima(List<LeituraClimatica> leituras) {
    if (leituras.isEmpty) {
    throw Exception('Lista de leituras vazia');
  }
  double temperatura = leituras.first.temperatura;

  for (final leitura in leituras) {
    if (leitura.temperatura > temperatura) {
      temperatura = leitura.temperatura;
    }
  }

  return temperatura;
}
// Retorna a menor temperatura encontrada.
double temperaturaMinima(List<LeituraClimatica> leituras) {
    if (leituras.isEmpty) {
    throw Exception('Lista de leituras vazia');
  }

  double temperatura = leituras.first.temperatura;

  for (final leitura in leituras) {
    if (leitura.temperatura < temperatura) {
      temperatura = leitura.temperatura;
    }
  }

  return temperatura;
}
// Calcula a média da umidade
 double mediaUmidade(List<LeituraClimatica> leituras){

  if (leituras.isEmpty) {
    throw Exception('Lista de leituras vazia');
  }

  double soma = 0;

  for(final leitura in leituras ){
    soma += leitura.umidade;
  }

  return soma / leituras.length;
}
// Retorna a maior umidade registrada.
 double umidadeMaxima(List<LeituraClimatica> leituras) {
    if (leituras.isEmpty) {
    throw Exception('Lista de leituras vazia');
  }
  double umidade = leituras.first.umidade;

  for (final leitura in leituras) {
    if (leitura.umidade > umidade) {
      umidade = leitura.umidade;
    }
  }

  return umidade;
}
// Retorna a menor umidade registrada.
double umidadeMinima(List<LeituraClimatica> leituras) {
    if (leituras.isEmpty) {
    throw Exception('Lista de leituras vazia');
  }
  double umidade = leituras.first.umidade;

  for (final leitura in leituras) {
    if (leitura.umidade < umidade) {
      umidade = leitura.umidade;
    }
  }

  return umidade;
}
// Filtra todas as leituras de um estado específico.
List<LeituraClimatica> filtrarPorEstado(
  List<LeituraClimatica> leituras,
  String estado,
) {

  final resultado = <LeituraClimatica>[];

  for (final leitura in leituras) {
    if (leitura.estado == estado) {
      resultado.add(leitura);
    }
  }

  return resultado;
}
// Filtra as leituras de um mês específico.
List<LeituraClimatica> filtrarPorMes(
  List<LeituraClimatica> leituras,
  int mes,
) {

  final resultado = <LeituraClimatica>[];

  for (final leitura in leituras) {
    if (leitura.mes == mes) {
      resultado.add(leitura);
    }
  }

  return resultado;
}
// Relatorio Anual Temperatura
void imprimirRelatorioAnual(
  List<LeituraClimatica> leituras,String estado,) {
  final conversor = ConversorTemperatura();
  final media = mediaTemperatura(leituras);


  print('\nEstado: $estado');

  print('Média: ${mediaTemperatura(leituras).toStringAsFixed(2)} °C',);

  print('Máxima: ${temperaturaMaxima(leituras).toStringAsFixed(2)} °C',);

  print('Mínima: ${temperaturaMinima(leituras).toStringAsFixed(2)} °C',);

  print(red('Celsius: ${media.toStringAsFixed(2)} °C',));

  print(yellow ('Fahrenheit: ${conversor.calcularFahrenheit(media).toStringAsFixed(2)} °F',));

  print(blue('Kelvin: ${conversor.calcularKelvin(media).toStringAsFixed(2)} K',));

}

// Relatorio Mensal Temperatura
void imprimirRelatorioMensal(
  List<LeituraClimatica> leituras,
  String estado,
) {
  final conversor = ConversorTemperatura();

  print('\n===== $estado =====');

  for (var mes = 1; mes <= 12; mes++) {

    final leiturasMes = filtrarPorMes(leituras, mes);
    if (leiturasMes.isEmpty) continue;
    final mediaMes = mediaTemperatura(leiturasMes);
    
    print('\n${meses[mes]}');

    print('Média: ${mediaTemperatura(leiturasMes).toStringAsFixed(2)} °C',);

    print('Máxima: ${temperaturaMaxima(leiturasMes).toStringAsFixed(2)} °C',);

    print('Mínima: ${temperaturaMinima(leiturasMes).toStringAsFixed(2)} °C',);

    print(red('Celsius: ${mediaMes.toStringAsFixed(2)} °C',));

    print(yellow('Fahrenheit: ${conversor.calcularFahrenheit(mediaMes).toStringAsFixed(2)} °F',));

    print(blue('Kelvin: ${conversor.calcularKelvin(mediaMes).toStringAsFixed(2)} K',));   

}
  }

// Relatorio Anual Umidade
void imprimirRelatorioUmidadeAnual(
  List<LeituraClimatica> leituras,String estado,) {
  
  

  print('\nUmidade - $estado');

  print(green('Média: ${mediaUmidade(leituras).toStringAsFixed(4)}',));

  print(red('Máxima: ${umidadeMaxima(leituras).toStringAsFixed(4)}',));

  print(blue('Mínima: ${umidadeMinima(leituras).toStringAsFixed(4)}',));

}

// Relatorio Mensal Umidade
void imprimirRelatorioUmidadeMensal(
  List<LeituraClimatica> leituras,String estado,) {

  print('\n===== Umidade - $estado =====');

  for (var mes = 1; mes <= 12; mes++) {

    final leiturasMes =
        filtrarPorMes(leituras, mes);

    if (leiturasMes.isEmpty) continue;

    print('\n${meses[mes]}');

    print(green('Média: ${mediaUmidade(leiturasMes).toStringAsFixed(4)}',));

    print(red('Máxima: ${umidadeMaxima(leiturasMes).toStringAsFixed(4)}',));

    print(blue('Mínima: ${umidadeMinima(leiturasMes).toStringAsFixed(4)}',));

  }
}
// Retorna a direção do vento mais frequente.
double direcaoMaisFrequente(List<LeituraClimatica> leituras, ) {

  final frequencias = <double, int>{};

  for (final leitura in leituras) {

  if (leitura.direcaoVento == 0) {
    continue;
  }

  frequencias[leitura.direcaoVento] =
      (frequencias[leitura.direcaoVento] ?? 0) + 1;
}

  double direcaoMaisFrequente =
      frequencias.keys.first;

  int maiorQuantidade =
      frequencias[direcaoMaisFrequente]!;

  for (final entrada in frequencias.entries) {

    if (entrada.value > maiorQuantidade) {

      maiorQuantidade = entrada.value;
      direcaoMaisFrequente = entrada.key;
    }
  }

  return direcaoMaisFrequente;
}

// Relatorio Anual Direção
void imprimirDirecaoAnual(
  List<LeituraClimatica> leituras,
  String estado,
) {
  final conversor = ConversorDirecao();

  final direcao =
      direcaoMaisFrequente(leituras);

  print('\nDireção do vento - $estado');

  print(yellow('Graus: ${direcao.toStringAsFixed(2)}°',));

  print(yellow('Radianos: ${conversor.paraRadianos(direcao).toStringAsFixed(2)} rad',));
}

// Relatorio Mensal Direção
void imprimirDirecaoMensal(
  List<LeituraClimatica> leituras,
  String estado,
) {
  final conversor = ConversorDirecao();

  print('\n===== Direção - $estado =====');

  for (var mes = 1; mes <= 12; mes++) {

    final leiturasMes =
        filtrarPorMes(leituras, mes);

    if (leiturasMes.isEmpty) continue;

    final direcao =
        direcaoMaisFrequente(leiturasMes);

    print('\n${meses[mes]}');

    print(yellow('Graus: ${direcao.toStringAsFixed(2)}°',));

    print(yellow('Radianos: ${conversor.paraRadianos(direcao).toStringAsFixed(2)} rad',));

  }
}
// Filtra leituras de uma hora específica.
List<LeituraClimatica> filtrarPorHora(
  List<LeituraClimatica> leituras,
  int hora,
) {

  final resultado = <LeituraClimatica>[];

  for (final leitura in leituras) {
    if (leitura.hora == hora) {
      resultado.add(leitura);
    }
  }

  return resultado;
}
// Exibe a temperatura média para cada horário do dia.
void imprimirTemperaturaPorHorario(
  List<LeituraClimatica> leituras,
  String estado,
) {

  print('\n===== Temperatura por Horário - $estado =====');

  for (var hora = 1; hora <= 24; hora++) {

    final leiturasHora =
        filtrarPorHora(leituras, hora);

    if (leiturasHora.isEmpty) continue;

    print('Hora $hora: ''${mediaTemperatura(leiturasHora).toStringAsFixed(2)} °C',);

  }

}
// Calcula a velocidade média do vento.
  double mediaVelocidadeVento(List<LeituraClimatica> leituras,) 
  {
   if (leituras.isEmpty) {
    throw Exception('Lista de leituras vazia');
  }
  double soma = 0;

  for (final leitura in leituras) {
    soma += leitura.velocidadeVento;
  }

  return soma / leituras.length;
}
// Retorna a maior velocidade do vento registrada.
double velocidadeMaxima(List<LeituraClimatica> leituras,) {
    if (leituras.isEmpty) {
    throw Exception('Lista de leituras vazia');
  }
  double velocidade =
      leituras.first.velocidadeVento;

  for (final leitura in leituras) {
    if (leitura.velocidadeVento >
        velocidade) {
      velocidade =
          leitura.velocidadeVento;
    }
  }

  return velocidade;
}
// Retorna a menor velocidade do vento registrada.
double velocidadeMinima(
  List<LeituraClimatica> leituras,) {
      if (leituras.isEmpty) {
    throw Exception('Lista de leituras vazia');
  }
  double velocidade = leituras.first.velocidadeVento;

  for (final leitura in leituras) {
    if (leitura.velocidadeVento <
        velocidade) {
      velocidade =
          leitura.velocidadeVento;
    }
  }

  return velocidade;
}
// Exibe o relatório anual da velocidade do vento.
void imprimirVelocidadeAnual(List<LeituraClimatica> leituras,String estado,) {
  final conversor =ConversorVento();

  final media = mediaVelocidadeVento(leituras);

  print('\nVelocidade do vento - $estado');

  print('Média: ${media.toStringAsFixed(2)} m/s', );

  print('Máxima: ${velocidadeMaxima(leituras).toStringAsFixed(2)} m/s',);

  print('Mínima: ${velocidadeMinima(leituras).toStringAsFixed(2)} m/s',);

  print('Km/h: ${conversor.paraKmPorHora(media).toStringAsFixed(2)}',);

  print('Mph: ${conversor.paraMph(media).toStringAsFixed(2)}',);

}
// Exibe o relatório mensal da velocidade do vento.
void imprimirVelocidadeMensal(List<LeituraClimatica> leituras,String estado,) {
  final conversor =ConversorVento();

  print('\n===== Velocidade - $estado =====');

  for (var mes = 1; mes <= 12; mes++) {

    final leiturasMes =
        filtrarPorMes(leituras, mes);

    if (leiturasMes.isEmpty) continue;

    final mediaMes =
        mediaVelocidadeVento(leiturasMes);

    print('\n${meses[mes]}');

    print('Média: ${mediaMes.toStringAsFixed(2)} m/s',);

    print('Máxima: ${velocidadeMaxima(leiturasMes).toStringAsFixed(2)} m/s',);

    print('Mínima: ${velocidadeMinima(leiturasMes).toStringAsFixed(2)} m/s',);

    print('Km/h: ${conversor.paraKmPorHora(mediaMes).toStringAsFixed(2)}',);

    print('Mph: ${conversor.paraMph(mediaMes).toStringAsFixed(2)}',);

  }
}

}
   final meses = [
    '',
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
  ];