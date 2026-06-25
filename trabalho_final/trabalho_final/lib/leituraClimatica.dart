// Classe que representa uma leitura climática.
class LeituraClimatica {
  
  LeituraClimatica(
    this.estado,
    this.ano,
    this.mes,
    this.dia,
    this.hora,
    this.temperatura,
    this.umidade,
    this.densidadeAr,
    this.velocidadeVento,
    this.direcaoVento,
  );

  final String estado;
  final int ano;

  final int mes;
  final int dia;
  final int hora;

  final double temperatura;
  final double umidade;
  final double densidadeAr;

  final double velocidadeVento;
  final double direcaoVento;

}
