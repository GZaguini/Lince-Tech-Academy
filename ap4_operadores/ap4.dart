void main() {

  final precoOriginal = 10.0;
  final precoFinal = 7.0;

  // Chamando função para calcular desconto
  final porcentagem =
      calcularPercentual(precoOriginal, precoFinal);

  // Exibindo resultado
  print(
    'O produto custava ''$precoOriginal reais ''e foi vendido por ''$precoFinal reais.');

  print(
    'O desconto aplicado foi ''$porcentagem%.');

}

// Função para calcular o percentual de desconto
int calcularPercentual(double precoOriginal,double precoFinal) {

  // Descobrindo o valor descontado
  final valorDescontado =
      precoOriginal - precoFinal;

  // Convertendo desconto em porcentagem
  final resultado =
      (valorDescontado * 100) ~/ precoOriginal;

  return resultado;

}