void main() {

  // Criando um objeto da classe Camelo
  final camelo = Camelo();

  // Chamando o método 
  camelo.comer();
  camelo.correr();

}

// Classe abstrata que define o comportamento de comer
abstract class Comer {
  void comer();
}

// Classe abstrata que define o comportamento de correr
abstract class Correndo {
  void correr();

}

// Classe concreta que implementa as interfaces Comer e Correndo
class Camelo implements Comer, Correndo {

  void comer() {
    // Exibe uma mensagem informando que o camelo está comendo
    print("O camelo esta comendo.");

  }
  void correr() {
    // Exibe uma mensagem informando que o camelo está correndo
    print("O camelo esta Correndo.");

  }

}