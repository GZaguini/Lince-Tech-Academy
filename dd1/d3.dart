void main (){
String paragrafo = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";
int frase = ContarFrase(paragrafo);
int vogais = ContadorVogais(paragrafo);
int tamanho = paragrafo.length;
String consoent = consoente(paragrafo);

var palavras = paragrafo.split(" ");

print("parágrafo: $paragrafo");
print("Numero de palavras:${palavras.length}");
print("Tamanho do texto: $tamanho");
print ("Numero de frases:$frase");
print("Numero de vogais:$vogais");
print("Consoantes encontradas:$consoent");
}

int ContarFrase(String paragrafo){
int contador = 0;
for (var letra in paragrafo.split("")){
  if (letra == ".") {
      contador++;
  }
}
return contador;
}

int ContadorVogais (String paragrafo){
  int contador = 0;
  for (var letra in paragrafo.split("")){
    if(letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u" ){
    contador++;
    }
  }
  return contador;
}

String consoente (String paragrafo ){
  final list = [];
  for (var letra in paragrafo.toLowerCase().split("")){
    
    if(letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u" && letra != " " &&
       letra != "." && letra != ","){
         if(!list.contains(letra)){
        list.add(letra);
      }
    }
  }
  list.sort();
  return list.toString();
}