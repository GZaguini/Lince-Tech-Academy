
void main (){
  // Declaração de variáveis
  String nome = "Guilherme";
  String sobrenome = "Zaguini";
  int idade = 24;
  bool ativo = true;
  double peso = 80.5;
  String? nacionalidade = "Brasileiro";

  // Exibe o nome completo
  print("Nome completo: $nome $sobrenome");

  // Verifica se a pessoa é maior de idade
  if(idade >=18){
    print("Idade: $idade (Maior de idade)");
  } else {
    print("Idade: $idade (Menor de idade)");
  }
  // Verifica se a pessoa está ativa
  if(ativo){
    print("Situação: Ativo");
  } else {
    print("Situação: Inativo");
  }
  // Exibe o peso com duas casas decimais
  print("Peso: ${peso.toStringAsFixed(2)}");
  
  // Exibe a nacionalidade, verificando se é nula
  if (nacionalidade != null) {
    print("Nacionalidade: $nacionalidade");
  } else {
    print("Nacionalidade: Nao informada");
  }
}