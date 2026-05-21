import 'dart:math';
void main (){
final random = Random();
int valorA = random.nextInt(100) + 1 ;
int valorB = random.nextInt(100) + 1 ;

var resultado = (valorA / valorB);
int parteInteira = resultado.toInt();
double parteDecimal = resultado - parteInteira;

print("Valor A: $valorA");
print("Valor B: $valorB");
print("Resultado: ${resultado.toStringAsFixed(2)}");
print("Parte inteira: $parteInteira");
print("Parte decimal: ${parteDecimal.toStringAsFixed(2)}");
 
}