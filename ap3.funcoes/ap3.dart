import 'dart:math';
void main (){
  // Gerando uma lista de 10 raios aleatórios entre 1 e 100
final random = Random();  
final raio = List.generate(10, (_) => random.nextDouble() * 99 + 1);

// Calculando e imprimindo a área e o perímetro para cada raio
for (var raio in raio){
  final area = calcularArea(raio);
  final perimetro = calcularPerimetro(raio);

// Imprimindo os resultados com 2 casas decimais
print('Raio: ${raio.toStringAsFixed(2)}, Área: ${area.toStringAsFixed(2)}, Perímetro: ${perimetro.toStringAsFixed(2)}');
}
}
// Função para calcular a área do círculo
double calcularArea (double raio) {
  return pi * pow(raio, 2);
}
// Função para calcular o perímetro do círculo
double calcularPerimetro (double raio) {
  return 2 * pi * raio;
}


