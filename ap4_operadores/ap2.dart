void main() {
final lista = ['10', '2XXL7', 'JOJ0', '99', '381', 'AD44', '47', '2B', '123', '78'];

texto(lista);

}

final convertidos = [];
void texto(List<String> lista){
  for(var texto in lista){
   var numero = int.tryParse(texto) ?? 0;
   convertidos.add(numero);
  }
   print(convertidos);
}