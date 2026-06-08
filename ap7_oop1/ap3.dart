void main() {

  // Lista contendo os produtos
  final produtos = [Produto("Mouse", 100),Produto("Teclado", 150),Produto("Monitor", 800),Produto("Headset", 250),Produto("Webcam", 200),];
  // Percorre todos os produtos da lista
  for (var produto in produtos) {
    // Calcula o novo preço com 10% de desconto
    final novoPreco = produto.desconto(10);
    // Exibe o nome do produto e o novo preço
    print(
      "Novo preço do produto ${produto.nome} (com desconto) ${novoPreco.toStringAsFixed(2)}"
    );
  }
}

// Classe que representa um produto
class Produto {
  // Construtor da classe
  Produto(this.nome, this.preco);

  //Atributos do produto
  String nome;
  double preco;

  // Método que calcula o preço com desconto
  double desconto(double percentual) {
    // Retorna o preço com o desconto aplicado
    return preco - (preco * (percentual / 100));

  }
}