// Função principal do programa
void main() {

  // Parágrafo que será analisado
  String paragrafo =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";

  // Conta o número de frases
  int frase = ContarFrase(paragrafo);

  // Conta o número total de vogais
  int vogais = ContadorVogais(paragrafo);

  // Obtém o tamanho total do texto
  int tamanho = paragrafo.length;

  // Obtém as consoantes presentes no texto
  String consoent = consoente(paragrafo);

  // Divide o texto em palavras
  var palavras = paragrafo.split(" ");

  // Exibe os resultados
  print("Parágrafo: $paragrafo");
  print("Número de palavras: ${palavras.length}");
  print("Tamanho do texto: $tamanho");
  print("Número de frases: $frase");
  print("Número de vogais: $vogais");
  print("Consoantes encontradas: $consoent");
}

// Função responsável por contar as frases
// Considera que cada ponto final (.) indica uma frase
int ContarFrase(String paragrafo) {

  int contador = 0;

  // Percorre cada caractere do texto
  for (var letra in paragrafo.split("")) {

    // Se encontrar um ponto final, soma uma frase
    if (letra == ".") {
      contador++;
    }
  }

  return contador;
}

// Função responsável por contar as vogais
int ContadorVogais(String paragrafo) {

  int contador = 0;

  // Percorre cada caractere do texto
  for (var letra in paragrafo.split("")) {

    // Verifica se a letra é uma vogal
    if (letra == "a" ||
        letra == "e" ||
        letra == "i" ||
        letra == "o" ||
        letra == "u") {

      contador++;
    }
  }

  return contador;
}

// Função responsável por identificar as consoantes presentes no texto
String consoente(String paragrafo) {

  // Lista que armazenará as consoantes encontradas
  final list = [];

  // Converte o texto para minúsculo e percorre letra por letra
  for (var letra in paragrafo.toLowerCase().split("")) {

    // Verifica se não é vogal, espaço, ponto ou vírgula
    if (letra != "a" &&
        letra != "e" &&
        letra != "i" &&
        letra != "o" &&
        letra != "u" &&
        letra != " " &&
        letra != "." &&
        letra != ",") {

      // Adiciona apenas se ainda não existir na lista
      if (!list.contains(letra)) {
        list.add(letra);
      }
    }
  }

  // Ordena as consoantes em ordem alfabética
  list.sort();

  // Retorna a lista como texto
  return list.toString();
}