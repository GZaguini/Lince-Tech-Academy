void main (){

  try {
    // Chama a função passando um número
    programna(10);
    // Executado apenas se não ocorrer nenhuma exceção
    print("Entrada correta, você inseriu um número par");
 
  } on Exception catch(e) {
    // Captura e exibe a mensagem da exceção
    print(e);
  }
}
// Função que valida se o número é par
void programna(int numero) {

  // Verifica se o número é ímpar
  if(numero.isOdd) {
    // Lança uma exceção caso o número seja ímpar
    throw Exception(
      "Entrada inválida. Insira apenas números pares."
    );
  }
}