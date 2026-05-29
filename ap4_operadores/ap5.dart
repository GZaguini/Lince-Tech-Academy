void main (){
  // Criando um mapa de pessoas e suas idades
  Map<String,int?> pessoa = {

    'Nelson': null,
    'Jane' : null,
    'Jack' : 16,
    'Rupert' : 37,
    'Andy' : 13,
    'Kim' : 27,
    'Robert' : 31

  };

  // Percorrendo todas as pessoas do mapa
  for (var item in pessoa.entries){

    // Verificando se a idade foi informada
    final idade = item.value ?? 'idade nao informada';

    // Exibindo nome e idade
    print('${item.key} - $idade');

  }

}