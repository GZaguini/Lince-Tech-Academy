# Duvidas sobre operadores em Dart

## O que acontece ao comparar tipos diferentes?
Em Dart, comparar tipos diferentes pode gerar resultados inesperados ou erro lógico.
Exemplo:
```dart
print(5 == "5");
```
**Observação: Mesmo que pareçam iguais, os tipos são diferentes (int e String), então a comparação pode retornar false.**
## Qual a diferença entre os operadores de divisão '/' e '~/`?

- / → divisão normal (resultado decimal)
- ~/ → divisão inteira (remove casas decimais)

Exemplo:
```dart
print(10 / 3);  // 3.333...
print(10 ~/ 3); // 3
```
**Observação: Use ~/ quando quiser resultado inteiro.**

## Como verifico se uma variável é de um determinado tipo em dart?
Usa-se o operador is.
```dart
void verificar(dynamic valor) {
  if (valor is int) {
    print("É um inteiro");
  }
}
```
## Qual a função do operador '?' em testes de tipo?

Em Dart, o ? não é usado para teste de tipo diretamente.

Ele é usado para:

- tipos nulos (String?)
- operador ternário (condição ? valor1 : valor2)

Exemplo:
```dart
String resultado = idade >= 18 ? "Adulto" : "Menor";
```

## Quando usar os operadores de valores opcionais e valores requeridos em uma função Dart?

- required → valor obrigatório
- valores opcionais → podem ter padrão ou ser omitidos
```dart
void criarUsuario({
  required String nome,
  int idade = 18,
}) {}
```

## Quais são os operadores de atribuição compostos e como eles funcionam?

São formas reduzidas de atribuição:
- +=
- -=
- *=
- /=
```dart
int x = 10;
x += 5; // x = x + 5
```

## Como uso os operadores && e || para combinar condições?
- && → todas as condições devem ser verdadeiras
- || → pelo menos uma condição verdadeira
```dart
if (idade > 18 && temDocumento) {
  print("Liberado");
}
```
## Qual a diferença entre usar if-else e expressões condicionais?
- if-else → mais detalhado
- ternário (? :) → mais curto
```dart
String status = idade >= 18 ? "Adulto" : "Menor";
```
**Observação: Ternário é melhor para condições simples.**

## Em quais situações a notação em cascata pode tornar o código mais legível?

Quando você precisa executar várias ações no mesmo objeto.
```dart
var lista = []
  ..add(1)
  ..add(2)
  ..add(3);
```
**Observação: Evita repetir o nome do objeto várias vezes.**