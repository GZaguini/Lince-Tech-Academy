void main() {
  // Lista contendo as temperaturas em Celsius
  final Celcius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  // Percorre todas as temperaturas da lista
  for (var celcius in Celcius) {

    // Converte a temperatura para Fahrenheit
    final fahrenheit = CalcularFahrenheit(celcius);

    // Converte a temperatura para Kelvin
    final kelvin = CalcularKelvin(celcius);

    // Exibe os valores convertidos com duas casas decimais
    print(
      "Celcius: $celcius, Fahrenheit: ${fahrenheit.toStringAsFixed(2)}, Kelvin: ${kelvin.toStringAsFixed(2)}",
    );
  }

}

// Função responsável por converter Celsius para Fahrenheit
double CalcularFahrenheit(double celcius) {

  // Fórmula: F = (C × 9/5) + 32
  return (celcius * 9 / 5) + 32;
}

// Função responsável por converter Celsius para Kelvin
double CalcularKelvin(double celcius) {

  // Fórmula: K = C + 273.15
  return celcius + 273.15;
}
