void main (){
// Criar um mapa de estados e suas respectivas cidades
final estados  = {
  "SC": ["Gaspar", "Blumenau", "Florianopolis"], 
  "PR": ["Curitiba", "Cascavel", "Foz do Iguaçu"], 
  "SP": ["Sao Paulo", "Guarulhos", "Campinas"],
  "MG": ["Belo Horizonte", "Juiz de Fora", "Berlinda"]
};
// Exibir as siglas dos estados
print("Estados: ${estados.keys.join(' ; ')}");
// Deixar as cidades do estado de Santa Catarina (SC) em ordem alfabética
estados['SC']?.sort();
// Exibir as cidades do estado de Santa Catarina (SC) em ordem alfabética
print("Cidades de SC: ${estados['SC']?.join(' ; ')}");

// Criar uma lista para armazenar as cidades com suas respectivas siglas dos estados
final cidadesComSigla = [];

  // Passando por todas as siglas dos estados
  for (var siglaEstado in estados.keys) {
    // Obtendo as cidades do estado atual
    final cidadesDoEstado = estados[siglaEstado]!;

    // Adicionando cada cidade com a sigla do estado à lista de cidades com sigla
    for (var cidade in cidadesDoEstado) {
      cidadesComSigla.add('$cidade - $siglaEstado');
    }
  }
  // Deixar a lista de cidades com sigla em ordem alfabética
  cidadesComSigla.sort();
  print("");
  // Exibir a lista de cidades com sigla em ordem alfabética
  print("Cidades com sigla:\n${cidadesComSigla.join('\n')}"); 
  
}