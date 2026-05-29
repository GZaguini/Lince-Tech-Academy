# Duvidas sobre Funções em Dart

## Quais cuidados devo ter ao criar funções em dart?

Ao criar funções em Dart, é importante:

- Usar nomes claros e objetivos
- Manter funções pequenas e com apenas uma responsabilidade
- Evitar dynamic sem necessidade
- Usar tipagem forte (int, String, etc.)
- Evitar repetir código
- Tratar erros quando necessário
- Preferir funções puras (sem efeitos colaterais)

**Observação: Funções bem feitas deixam o código mais fácil de entender e manter.**

## Posso chamar minha função dentro dela mesma?

Sim, isso se chama recursão.

Exemplo:
```dart
void contagem(int n) {
  if (n == 0) return;
  print(n);
  contagem(n - 1);
}
```
**Observação: É obrigatório ter uma condição de parada, senão o programa entra em loop infinito.**

## É recomendado usar dynamic nos parâmetros?

Não é recomendado usar dynamic sem necessidade.

Exemplo ruim:
```dart
dynamic soma(a, b) {
  return a + b;
}
```
Exemplo melhor:
```dart
int soma(int a, int b) {
  return a + b;
}
```
**Observação: Tipagem forte evita erros e melhora o código.**

## Quando usar parâmetros opcionais e obrigatórios?
required: quando o valor é obrigatório
opcionais ([] ou {}): quando o valor pode faltar

Exemplo:
```dart
void criarUsuario({
  required String nome,
  int idade = 18,
}) {}
```
Observação: Parâmetros nomeados deixam o código mais legível.

## Métodos da variável Function em Dart

Uma variável do tipo Function pode:

- Ser chamada como função
- Ser passada como parâmetro
- Ser armazenada em variáveis
- Ser retornada por outras funções

Exemplo:
```dart
void executar(Function funcao) {
  funcao();
}
```
**Observação: Funções em Dart são “first-class citizens”.**

