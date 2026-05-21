# Duvidas sobre Coleções em Dart

## Quais as boas práticas no uso de listas em dart? 

- Usar nomes claros para as listas.
- Definir o tipo da lista para evitar erros.
- Evitar misturar tipos diferentes sem necessidade.
- Utilizar métodos como add(), remove() e contains() para organizar os dados.
- Verificar se a lista está vazia antes de acessar posições.

**Exemplo**
```dart
List<String> nomes = ["Ana", "Carlos"];

nomes.add("Guilherme");

print(nomes);
```
Nesse exemplo, a lista guarda apenas textos (String) e usa o método add() para adicionar um novo nome.

## O que não é recomendado fazer quando usado listas em dart? 

- Misturar vários tipos de dados sem necessidade.
- Acessar posições que não existem na lista.
- Criar listas desnecessárias.
- Alterar listas sem verificar se possuem elementos.
- Usar nomes confusos nas listas.

**Exemplo errado**
```dart
List itens = ["Ana", 10, true];
```
Isso pode deixar o código confuso.

**Melhor forma**
```dart
List<String> nomes = ["Ana", "Carlos"];
```
Assim a lista fica organizada e mais segura.

## Como entender quando usar listas e quando usar mapas? 

Use List quando precisar guardar vários valores em sequência.

**Exemplo:**
```dart
List<String> nomes = ["Ana", "Carlos", "João"];
```
Aqui os dados são acessados pela posição.

Use Map quando cada valor precisar de uma identificação (chave).

**Exemplo:**
```dart
Map<String, dynamic> pessoa = {
  "nome": "Ana",
  "idade": 20
};
```
Aqui os dados são acessados pela chave.

## Quais métodos podem me auxiliar no uso de listas e sets em dart?

**Alguns métodos ajudam bastante a adicionar, remover e procurar elementos.**
- **.add()** Adiciona um elemento
- **.remove()** Remove um elemento.
- **.contains()** Verifica se o valor existe.
- **.length** Mostra a quantidade de elementos.
- **.isEmpty** Verifica se está vazio.
- **.clear()** Remove todos os elementos.

**Exemplo completo**
```dart
List<String> nomes = ["Ana", "Carlos"];

nomes.add("João");

print(nomes.contains("Ana"));
print(nomes.length);
```
Esses métodos funcionam tanto em List quanto em Set na maioria dos casos.

## Quais cuidados devo levar ao usar sets?

**Cuidados ao usar Set em Dart**
- Lembrar que o Set não permite valores repetidos.
- Não usar Set quando precisar manter itens duplicados.
- Evitar depender da ordem dos elementos.
- Definir o tipo do Set para deixar o código mais seguro.
- Verificar se o elemento existe antes de algumas operações.

**Exemplo**
```dart
Set<String> nomes = {"Ana", "Carlos"};

nomes.add("Ana");

print(nomes);
```
Resultado:
```dart
{Ana, Carlos}
```
O "Ana" não foi adicionado novamente porque Set não aceita repetição.


