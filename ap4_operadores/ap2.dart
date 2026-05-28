void main() {
// Lista de strings para converter
final lista = ['10', '2XXL7', 'JOJ0', '99', '381', 'AD44', '47', '2B', '123', '78'];

// Chamando a função para converter a lista de strings em números inteiros
converterLista(lista);

}

// Lista para armazenar os números convertidos
final convertidos = <int>[];
// Função para converter a lista de strings em números inteiros
void converterLista(List<String> lista){
  // Iterando sobre cada string na lista
  for(var texto in lista){
    // Tentando converter a string para um número inteiro, se não for possível, retorna 0
   var numero = int.tryParse(texto) ?? 0;
   // Adicionando o número convertido à lista de convertidos
   convertidos.add(numero);
  }
  // Imprimindo a lista de números convertidos
   print('Lista convertida: ${convertidos.join(', ')}');
}