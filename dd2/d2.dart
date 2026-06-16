import 'dart:math';

void main() {
  final random = Random();
  final pessoa = Pessoa();
  final fornecedores = <Fornecedor>[
  FornecedorDeBebidas(),
  FornecedorDeSanduiches(),
  FornecedorDeBolos(),
  FornecedorDeSaladas(),
  FornecedorDePetiscos(),
  FornecedorDeUltraCalorico(),
];
// Enquanto a pessoa estiver em déficit,continua realizando refeições aleatórias
while(pessoa.precisaComer()){
  final fornecedor = fornecedores[random.nextInt(fornecedores.length)];
    pessoa.refeicao(fornecedor);
}
  pessoa.informacoes();
}

// Classe que representa um produto consumível
class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}
// Contrato que todos os fornecedores devem seguir
abstract class Fornecedor {
  Produto fornecer();
}

// Fornecedor de bebidas
class FornecedorDeBebidas implements Fornecedor{
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

// Fornecedor de Sanduiches
class FornecedorDeSanduiches implements Fornecedor{
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('X-Burguer', 550),
    Produto('X-Salada', 480),
    Produto('Misto Quente', 320),
    Produto('Hambúrguer Artesanal', 700),
    Produto('Sanduíche Natural', 250)
  ];
Produto fornecer(){
  return _sanduichesDisponiveis[_random.nextInt(_sanduichesDisponiveis.length)];
}
}

// Fornecedor de Bolos
class FornecedorDeBolos implements Fornecedor{
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de Chocolate ', 450),
    Produto('Bolo de Cenoura', 380),
    Produto('Bolo de Fubá', 300),
    Produto('Bolo de Laranja', 320),
    Produto('Bolo de Prestígio', 500)
  ];
Produto fornecer(){
  return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
}
}

// Fornecedor de Saladas
class FornecedorDeSaladas implements Fornecedor{
  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto('Salada Caesar' , 180),
    Produto('Salada de Frutas', 120),
    Produto('Salada de Atum', 150),
    Produto('Salada Tropical', 200),
    Produto('Salada Verde', 160)
  ];
Produto fornecer(){
  return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
}
}
// Fornecedor de Petisco
class FornecedorDePetiscos implements Fornecedor{
  final _random = Random();
  final _petiscosDisponiveis = <Produto>[
    Produto('Coxinha ', 250),
    Produto('Pastel', 300),
    Produto('Pão de Queijo', 120),
    Produto('Batata Frita', 400),
    Produto('Empada', 180)
  ];
Produto fornecer(){
  return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
}
}
// Fornecedor de Ultra-Calorico
class FornecedorDeUltraCalorico implements Fornecedor {
  final _random = Random();
  final _ultraCaloricoDisponiveis = <Produto>[
    Produto('Pizza Família', 1800),
    Produto('Combo Fast Food', 1500),
    Produto('Rodízio de Pizza', 2200),
    Produto('Lasanha Gigante', 1300),
    Produto('Torta Recheada', 1200)
  ];
Produto fornecer(){
  return _ultraCaloricoDisponiveis[_random.nextInt(_ultraCaloricoDisponiveis.length)];
}
}
// Possíveis estados de calorias da pessoa
enum StatusCalorico {
  deficitExtremo,
  deficit,
  satisfeito,
  excesso,
}

class Pessoa {
  final _random = Random();
  // Acumulador de calorias
  int _caloriasConsumidas = 0;
  // Quantidade de refeições realizadas
  int _quantidadeRefeicoes = 0;

Pessoa() {
  // Define uma quantidade inicial de calorias aleatória
  _caloriasConsumidas = _random.nextInt(4000);
   print('Calorias iniciais: $_caloriasConsumidas');
}
// Retorna o status atual baseado nas calorias
 StatusCalorico obterStatus() {
      if(_caloriasConsumidas <= 500){
        return StatusCalorico.deficitExtremo;
      }else if(_caloriasConsumidas <= 1800){
        return StatusCalorico.deficit;
      }else if(_caloriasConsumidas <=2500){
        return StatusCalorico.satisfeito;
      }else{
        return StatusCalorico.excesso;
      }
    }

  /// Imprime as informacoes desse consumidor
  void informacoes() {
    final status = obterStatus();
    print('Calorias consumidas: $_caloriasConsumidas');
    print('Refeições realizadas: $_quantidadeRefeicoes');

      if (status == StatusCalorico.deficitExtremo) {
    print('Status: Déficit extremo de calorias');
  } else if (status == StatusCalorico.deficit) {
    print('Status: Déficit de calorias');
  } else if (status == StatusCalorico.satisfeito) {
    print('Status: Pessoa está satisfeita');
  } else {
    print('Status: Excesso de calorias');
  }
  }

  /// Consome um produto e aumenta o número de calorias
  void refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

     // Soma as calorias do produto consumido
    _caloriasConsumidas += produto.calorias;
     // Incrementa o contador de refeições
    _quantidadeRefeicoes++;  
  }
// Verifica se a pessoa precisa realizar mais refeições
  bool precisaComer() {
  final status = obterStatus();

  return status == StatusCalorico.deficitExtremo ||
         status == StatusCalorico.deficit;
}
}
