import 'dart:math';
void main (){
// Cria um objeto Random para gerar números aleatórios
Random random = Random();

// Lista de Nomes 
final nomes = ["Ana", "Francisco", "Joao", "Pedro", "Gabriel" , "Rafaela", "Marcio", "Jose", 
"Carlos", "Patricia", "Helena", "Camila", "Mateus", "Gabriel", "Maria", "Samuel", "Karina", "Antonio", "Daniel", "Joel", "Cristiana", "Sebastião", "Paula"];

// Lista de sobrenomes
final sobreNome = ["Silva", "Ferreira", "Almeida", "Azevedo", "Braga", "Barros", "Campos", "Cardoso", "Teixeira", "Costa", "Santos", "Rodrigues", "Souza", "Alves", "Pereira", 
"Lima", "Gomes", "Ribeiro", "Carvalho", "Lopes", "Barbosa"];

// Sorteia um nome aleatório da lista de nomes
String nomeAleatorio = nomes[random.nextInt(nomes.length)];
  // Sorteia um sobrenome aleatório da lista de sobrenomes
String sobreNomeAleatorio = sobreNome[random.nextInt(sobreNome.length)];
// Exibe o nome completo gerado aleatoriamente
print("Nome: $nomeAleatorio $sobreNomeAleatorio");
}