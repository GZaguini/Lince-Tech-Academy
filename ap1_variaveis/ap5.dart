
void main (){
 const pessoa = Pessoa("Guilherme","Zaguini",24,true,80.5,null);
 print(pessoa.toString());

}
class Pessoa {
  const Pessoa(
    this.nome,
    this.sobrenome,
    this.idade,
    this.ativo,
    this.peso,
    this.nacionalidade,
  );

  // Declarando as variáveis
  final String nome;
  final String sobrenome;
  final int idade;
  final bool ativo;
  final double peso;
  final String? nacionalidade;

@override
  String toString() {
    var dadosPessoa = "";

    // Imprimir no console, com a formatação especificada
    dadosPessoa += "Nome completo: $nome $sobrenome\n";

    if (idade >= 18) {
      dadosPessoa += "Idade: $idade (maior de idade)\n";
    } else {
      dadosPessoa += "Idade: $idade (menor de idade)\n";
    }

    if (ativo) {
      dadosPessoa += "Situação: Ativo\n";
    } else {
      dadosPessoa += "Situação: Inativo\n";
    }

    dadosPessoa += "Peso: ${peso.toStringAsFixed(2)}\n";

    if (nacionalidade != null) {
      dadosPessoa += "Nacionalidade: $nacionalidade\n";
    } else {
      dadosPessoa += "Nacionalidade: Nao informada\n";
    }

    return dadosPessoa;
  }
}