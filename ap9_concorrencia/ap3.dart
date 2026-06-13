// Função principal do programa
void main() async {

  // Exibe a mensagem de início da contagem regressiva
  print('Iniciando lançamento');

  // Variável que controla a contagem regressiva
  var contador = 5;

  // Executa enquanto o contador for maior que zero
  while (contador > 0) {

    // Aguarda a exibição do número atual da contagem
    await contagem(contador);

    // Decrementa o contador em 1
    contador--;

  }

  // Exibe a mensagem de lançamento após o término da contagem
  print('Foguete lançado!');

}

// Função assíncrona responsável pela contagem regressiva
Future<void> contagem(int value) async {

  // Exibe o valor atual da contagem
  print('$value');

  // Aguarda 1 segundo antes de continuar
  await Future.delayed(Duration(seconds: 1));

}