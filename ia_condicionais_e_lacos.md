# Duvidas sobre Condicional e laços de repetição em Dart

## Qual a diferença entre usar 'if', 'else if' e 'else'? 

- **if**: executa um bloco de código se a condição for verdadeira.

- **else if**: testa uma nova condição caso o `if` anterior seja falso.

- **else**: executa um bloco de código quando nenhuma das condições anteriores for verdadeira.

### Exemplo

```dart
int nota = 7;

if (nota >= 9) {
  print('Excelente');
}
else if (nota >= 7) {
  print('Bom');
}
else {
  print('Precisa melhorar');
}
```
## Quais cuidados tenho que ter com “if” e “else”?  

1. A condição do `if` deve resultar em `true` ou `false`.

2. Usar `else` apenas quando houver uma ação para o caso da condição ser falsa.

3. Evitar condições desnecessárias ou repetidas.

4. Organizar corretamente as chaves `{}` para evitar erros de lógica.

5. Utilizar `else if` quando houver mais de uma condição a ser testada.

6. Tomar cuidado com os operadores:
   - `==` igual
   - `!=` diferente
   - `>` maior que
   - `<` menor que
   - `>=` maior ou igual
   - `<=` menor ou igual

7. Indentar o código corretamente para facilitar a leitura.

### Exemplo

```dart
if (idade >= 18) {
  print('Maior de idade');
} else {
  print('Menor de idade');
}
```

## Qual a importância da palavra-chave 'break' em um 'switch case'? 

A palavra-chave `break` é utilizada para encerrar a execução de um caso (`case`) dentro de uma estrutura `switch`.

Sem o `break`, o programa continuaria executando os próximos casos, o que pode gerar resultados incorretos.

### Exemplo

```dart
switch (opcao) {
  case 1:
    print('Cadastrar');
    break;

  case 2:
    print('Consultar');
    break;

  default:
    print('Opção inválida');
}
```
## Quando devo usar 'switch' em vez de uma série de 'if else'? 

Utilize `switch` quando precisar comparar uma mesma variável ou expressão com vários valores diferentes.

O `switch` torna o código mais organizado e fácil de ler do que uma sequência grande de `if else`.

### Exemplo com switch

```dart
switch (opcao) {
  case 1:
    print('Cadastrar');
    break;

  case 2:
    print('Consultar');
    break;

  case 3:
    print('Excluir');
    break;

  default:
    print('Opção inválida');
}
```
### Exemplo com if else
```dart
if (opcao == 1) {
  print('Cadastrar');
} else if (opcao == 2) {
  print('Consultar');
} else if (opcao == 3) {
  print('Excluir');
} else {
  print('Opção inválida');
}
```
- Use `switch` quando houver vários valores possíveis para a mesma variável.
- Use `if else` quando as condições forem mais complexas.
- O `switch` deixa o código mais organizado e legível em comparações simples.

## Como posso repetir um bloco de código um número específico de vezes? 

Utilize o loop `for` quando souber exatamente quantas vezes o código deve ser executado.

### Exemplo

```dart
for (var i = 0; i < 5; i++) {
  print('Olá');
}
```

## Qual a diferença entre os comandos 'break' e 'continue'? 

### break

O comando `break` interrompe completamente a execução do loop.

### Exemplo

```dart
for (var i = 1; i <= 10; i++) {
  if (i == 5) {
    break;
  }
  print(i);
}
```
### continue
O comando `continue` pula a iteração atual e passa para a próxima.
```dart
for (var i = 1; i <= 5; i++) {
  if (i == 3) {
    continue;
  }
  print(i);
}
```
## Quando é adequado usar for e usar while? 

### for

Utilize quando souber exatamente quantas vezes o bloco de código será executado.
```dart
for (var i = 0; i < 10; i++) {
  print(i);
}
```
### while

Utilize quando a quantidade de repetições depender de uma condição.
```dart
var numero = 1;

while (numero < 100) {
  print(numero);
  numero *= 2;
}
```
- `for` → quantidade de repetições conhecida.
- `while` → quantidade de repetições desconhecida.