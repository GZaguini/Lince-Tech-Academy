
import 'dart:math';
void main (){
// Chamando a função A com as funções B e C como parâmetros
final resultado1 = funcaoA(funcaoB);
final resultado2 = funcaoA(funcaoC);

// Imprimindo os resultados
print('A (B) = $resultado1');
print('A (C) = $resultado2');


}
// Função A que recebe outra função como parâmetro
int funcaoA(int Function(int) funcaoparametro){
  // Gerando um número aleatório
  final random = Random();
  // Chamando a função passada como parâmetro com o número aleatório
  final resultado1 = funcaoparametro(random.nextInt(100));
  final resultado2 = funcaoparametro(random.nextInt(100));
  // Somando os resultados das funções B e C
  final  soma = resultado1 + resultado2;
  // Retornando a soma
  return soma;
}
// Função B que multiplica o número por 2
int funcaoB(int numero){
  return numero * 2;
  }
// Função C que adiciona 2 ao número
int funcaoC(int numero){
  return numero + 2;
  }

