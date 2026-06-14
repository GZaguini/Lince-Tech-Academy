import 'dart:math';

// Função principal do programa
void main() {

  // Cria um objeto para gerar números aleatórios
  final random = Random();

  // Gera uma lista com 10 raios aleatórios entre 1 e 100
  List raios = List.generate(10, (_) => random.nextInt(100) + 1);

  // Percorre todos os raios da lista
  for (var raio in raios) {

    // Calcula a área do círculo
    final area = Area(raio);

    // Calcula o perímetro do círculo
    final perimetro = Perimetro(raio);

    // Exibe o raio, a área e o perímetro calculados
    print("Raios $raio, Area: $area, Perimetro: $perimetro");

  }

}

// Função responsável por calcular a área do círculo
double Area(int raio) {

  // Fórmula da área: π × raio²
  return pi * (raio * raio);

}

// Função responsável por calcular o perímetro do círculo
double Perimetro(int raio) {

  // Fórmula do perímetro: 2 × π × raio
  return 2 * pi * raio;

}
