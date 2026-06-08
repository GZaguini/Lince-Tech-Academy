void main () {

  // Criando uma conta bancária 
  var conta = ContaBancaria(1000, "Carlos");

  // Depositando 500 reais na conta
  conta.Depositar(500);

  // Retirando 200 reais da conta
  conta.Retirar(200);

  // Exibindo o saldo atual da conta
  print("Saldo atual: ${conta.Saldo}");

}
class ContaBancaria {

  // Construtor da classe ContaBancaria
  ContaBancaria(this.Saldo, this.Titular);

  // Atributo que armazena o saldo da conta
  double Saldo;

  // Atributo que armazena o nome do titular
  String Titular;

  // Método para depositar um valor na conta
  void Depositar(double valor) {

    // Soma o valor informado ao saldo atual
    Saldo = Saldo + valor;
  }
  // Método para retirar um valor da conta
  void Retirar(double valor) {

    // Verifica se há saldo suficiente
    if (valor <= Saldo) {

      // Subtrai o valor do saldo
      Saldo = Saldo - valor;
    } else {
      // Exibe mensagem caso o saldo seja insuficiente
      print("Saldo insuficiente");

    }
  }
}