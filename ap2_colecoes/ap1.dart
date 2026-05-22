import 'dart:math';
void main (){
  // Gerar uma lista de 10 números aleatórios entre 1 e 100
final random = Random();
List numeros = List.generate(10, (_) => random.nextInt(100) + 1);
var posicao = 0;

    // Exibir os números e suas posições
    for (posicao = 0; posicao < numeros.length; posicao++) {
        print("Posiçoes $posicao Número: ${numeros[posicao]}");
      }
    } 
