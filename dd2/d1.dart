import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// Classe abstrata que define o comportamento
abstract class MeioDeComunicacao {
  // Método que deverá ser implementado pelas classes filhas
  void fazerLigacao(String telefone);
}

// Classe Telefone
class Telefone implements MeioDeComunicacao {

  // Implementação do método de ligação para telefone
  void fazerLigacao(String telefone) {
    print("[TELEFONE] Ligando para $telefone...");
  }
}

// Classe Celular
class Celular implements MeioDeComunicacao {

  // Implementação do método de ligação para celular
  void fazerLigacao(String celular) {
    print("[CELULAR] Ligando para $celular...");
  }
}

// Classe Orelhao
class Orelhao implements MeioDeComunicacao {

  // Implementação do método de ligação para orelhão
  void fazerLigacao(String orelhao) {
    print("[ORELHAO] Ligando para $orelhao...");
  }
}