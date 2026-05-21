# Duvidas sobre variaveis em Dart

## Quais as boas práticas em dart declarando variáveis? 
- O **var** faz o Dart descobrir automaticamente o tipo da variável.
- **String** Guarda textos.
- **int** Guarda números inteiros.
- **double** Guarda números com casas decimais.
- **bool** Guarda verdadeiro ou falso.
- **dynamic** Pode mudar de tipo durante o programa.Não é muito recomendado usar sem necessidade.
- **final** O valor pode ser definido apenas uma vez.
- **const** É uma constante fixa definida em tempo de compilação.

## O que evitar na hora de declarar variáveis em dart?

1. **Nomes pouco claros:** Evite nomes que não explicam o que a variável faz.
2. **Abreviações sem sentido:** Evite siglas difíceis de entender.
3. **Uso excessivo de var:** Quando o tipo não fica claro, pode dificultar a leitura.
4. **Usar dynamic sem necessidade:** Isso pode causar erros em tempo de execuçã evitar usar quando não for realmente necessário
5. **Usar late sem certeza de inicialização:** Se esquecer de atribuir valor antes do uso, dá erro.
6. **Variáveis desnecessárias:** Criar variáveis sem necessidade deixa o código poluído.

## No dart quando usar variáveis nulas e quando usar o modificador late?

Use variáveis nulas quando existe a possibilidade da variável não ter valor naquele momento.

Exemplo:
```dart
String? telefone;
```
Nesse caso, telefone pode guardar um texto ou null.

Muito usado quando uma informação é opcional.

**Quando usar late**

Use late quando a variável obrigatoriamente terá valor, mas será inicializada depois.

Exemplo:
```dart
late String endereco;
```
Depois:
```dart
endereco = "Rua A";
```
O late é útil quando o valor só ficará disponível futuramente, mas não pode ser nulo.

## Quais as diferenças entre final e const em dart? 

Os dois servem para criar variáveis que não podem ser alteradas depois de receber um valor.

**final**

O valor é definido apenas uma vez durante a execução do programa.
```dart
final nome = "Guilherme";
```
Muito usado quando o valor pode ser descoberto somente enquanto o programa roda.

**const**

O valor precisa ser conhecido antes da execução, em tempo de compilação.
```dart
const pi = 3.14;
```
Usado para valores fixos e constantes.

## Por que no dart usar variáveis final e const ao invés de usar somente seus valores padrão? 

Usar final e const ajuda a deixar o código mais seguro e organizado, evitando que valores sejam alterados sem necessidade.

Além disso:
- melhora a leitura do código;
- evita erros de alteração acidental;
- deixa mais claro quais valores não mudam.

Exemplo com final
```dart
final nome = "Guilherme";
```
O valor de nome não poderá ser alterado depois.

Exemplo com const
```dart
const pi = 3.14;
```
O valor é totalmente fixo e constante.