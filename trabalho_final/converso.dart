import 'dart:math';

class ConversorTemperatura {

  double calcularFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  double calcularKelvin(double celsius) {
    return celsius + 273.15;
  }
}

class ConversorVento {

  double paraKmPorHora(double metrosPorSegundo) {
    return metrosPorSegundo * 3.6;
  }

  double paraMph(double metrosPorSegundo) {
    return metrosPorSegundo * 2.23694;
  }
}

class ConversorDirecao {

  double paraRadianos(double graus) {
    return graus * pi / 180;
  }

  double paraGraus(double radianos) {
    return radianos * 180 / pi;
  }
}