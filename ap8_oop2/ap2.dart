
void main() {
  // Criando um objeto da classe Cachorro
  final cachorro = Cachorro();
  // Chamando o método 
  cachorro.comer();
  cachorro.beber();
  cachorro.latir();
}

// Classe abstrata que serve como modelo para outros animais
abstract class Animal {
  // Método que simula um animal comendo
  void comer() {
    print("O animal esta comendo.");
  }
  // Método que simula um animal bebendo
  void beber() {
    print("O animal esta bebendo.");
  }
}
// Classe Cachorro herda os métodos da classe Animal
class Cachorro extends Animal {

  // Método específico da classe Cachorro
  void latir() {
    print("O cachorro esta latindo.");
  }

}

