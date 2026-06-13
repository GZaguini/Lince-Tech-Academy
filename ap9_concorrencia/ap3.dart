void main() async {
  print('Iniciando lançamento');

  var contador = 5;

  while( contador > 0 ){
    await contagem(contador);
    contador-- ;
  
  }
    

  print('Foguete lançado!');
}

Future<void> contagem(int value) async {
    print('$value');
   await Future.delayed(Duration(seconds: 1));

}