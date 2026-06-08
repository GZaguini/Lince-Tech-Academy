import 'dart:math';

void main (){
final random = Random();

  // Criando um objeto da classe Pessoa
  final pessoa = Pessoa();

  // Usando os setters
  pessoa.nome = "Carlos";
  pessoa.idade = random.nextInt(100) + 1;
  pessoa.altura = (random.nextDouble() * 1.3) + 1;

  // Usando os getters
  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("Altura: ${pessoa.altura.toStringAsFixed(2)}");
}
class Pessoa {

 // Atributos privados
  String _nome = "";
  int _idade = 0;
  double _altura = 0.0;
  
  // Getter do nome
  String get nome => _nome;

  // Setter do nome
  set nome(String valor) {
    _nome = valor;
  }
  // Getter da idade
  int get idade => _idade;

  // Setter da idade com validação
  set idade(int valor) {
    if (valor >= 0) {
      _idade = valor;
    }else {
      print("A idade deve ser um valor maior ou igual a zero.");
    }
  }
  // Getter da altura
  double get altura => _altura;
  // Setter da altura
  set altura(double valor) {
    _altura = valor;
  }
}