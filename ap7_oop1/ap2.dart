void main() {

  // Criar retângulo
  var resultado = Rentangulo(8.0, 5.0);

  // Chamando o método calcularArea() e exibindo o resultado no console
  print("Area do retângulo: ${resultado.calcularArea()}");
}

class Rentangulo {
  // Construtor da classe
  // Recebe a largura e a altura do retângulo
  Rentangulo(this.largura, this.altura);

  // Atributo que armazena a largura do retângulo
 final double largura;
  // Atributo que armazena a altura do retângulo
 final  double altura;

  // Método que calcula e retorna a área do retângulo
  double calcularArea() {

    // Retorna o resultado da multiplicação entre largura e altura
    return largura * altura;
  }

}