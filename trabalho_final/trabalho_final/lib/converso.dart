import 'dart:math';
// Classe responsável pelas conversões de temperatura.
class ConversorTemperatura {
  // Converte Celsius para Fahrenheit.
  double calcularFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }
   // Converte Celsius para Kelvin.
  double calcularKelvin(double celsius) {
    return celsius + 273.15;
  }
}
// Classe responsável pelas conversões de velocidade do vento.
class ConversorVento {
  // Converte m/s para km/h.
  double paraKmPorHora(double metrosPorSegundo) {
    return metrosPorSegundo * 3.6;
  }
  // Converte m/s para mph.
  double paraMph(double metrosPorSegundo) {
    return metrosPorSegundo * 2.23694;
  }
}
// Classe responsável pelas conversões de direção do vento.
class ConversorDirecao {
   // Converte graus para radianos.
  double paraRadianos(double graus) {
    return graus * pi / 180;
  }
   // Converte radianos para graus.
  double paraGraus(double radianos) {
    return radianos * 180 / pi;
  }
}