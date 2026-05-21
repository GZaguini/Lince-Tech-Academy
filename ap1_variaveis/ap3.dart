import 'dart:math';
void main () {
  // Gerar dois valores aleatórios entre 1 e 100
  final random = Random();
  int valorA = random.nextInt(100) + 1 ; 
  int valorB = random.nextInt(100) + 1 ;

  // Mostra os valores Aleatorios
  print("Valores Aleatorios:");
  print("Valor A: $valorA");
  print("Valor B: $valorB");
  
  // Inverter os valores usando uma variável auxiliar
  final auxiliar = valorA;
  valorA = valorB;
  valorB = auxiliar;
  print("");
  // Mostra os valores invertidos
  print("Valores Invertidos:");
  print("Valor A: $valorA");
  print("Valor B: $valorB");
  
}




