# Tratamento de Exceções em Dart

## Qual a diferença entre erro e exceção em Dart?

### Error

* Representa um problema grave no programa.
* Normalmente indica falhas de programação.
* Geralmente não deve ser tratado com `try/catch`.

### Exception

* Representa um problema esperado durante a execução.
* Pode ser tratado utilizando `try/catch`.

## O que fazem os blocos try, catch e finally?

### try

Executa um bloco de código que pode gerar uma exceção.

### catch

Captura e trata a exceção lançada.

### finally

Executa sempre, ocorrendo erro ou não.

### Exemplo

```dart
try {
  print('Executando');
} catch (e) {
  print('Erro');
} finally {
  print('Finalizado');
}
```


## Como posso capturar diferentes tipos de exceções usando catch?

É possível utilizar diferentes blocos `on` para capturar exceções específicas.

### Exemplo

```dart
try {
  // código
} on FormatException {
  print('Formato inválido');
} on Exception catch (e) {
  print(e);
}
```

---

## Em quais situações é útil usar o bloco finally?

O bloco `finally` é útil quando alguma ação precisa ser executada obrigatoriamente.

### Exemplos

* Fechar arquivos.
* Encerrar conexões.
* Liberar recursos do sistema.

---

## Por que eu precisaria lançar uma exceção em meu código?

Para informar que uma condição inválida ocorreu durante a execução do programa.

### Exemplo

```dart
if (idade < 0) {
  throw Exception('Idade inválida');
}
```

---

## Como posso personalizar mensagens de erro ao lançar exceções?

Utilizando uma mensagem personalizada dentro da exceção.

### Exemplo

```dart
throw Exception(
  'Valor informado é inválido'
);
```

---

## Quais são as melhores práticas para lançar exceções em Dart?

* Utilizar mensagens claras e objetivas.
* Lançar exceções apenas quando necessário.
* Tratar exceções sempre que possível.
* Não ocultar erros importantes.

---

## Qual a diferença entre usar assert e lançar uma exceção?

### assert

* Utilizado durante o desenvolvimento.
* Verifica condições que deveriam ser verdadeiras.

### Exception

* Utilizada durante a execução do programa.
* Trata situações que podem ocorrer normalmente.

### Exemplo de assert

```dart
assert(idade >= 0);
```

### Exemplo de Exception

```dart
if (idade < 0) {
  throw Exception('Idade inválida');
}
```

### Resumo

```text
assert = valida condições durante o desenvolvimento.
Exception = trata erros durante a execução.
```

---

## Em quais situações o assert é mais útil?

* Testar pré-condições.
* Encontrar erros de programação.
* Validar dados durante o desenvolvimento.

### Exemplo

```dart
void cadastrar(int idade) {
  assert(idade >= 0);
}
```

---

# Resumo Geral

```text
Error = erro grave do programa.

Exception = erro esperado que pode ser tratado.

try = tenta executar um bloco de código.

catch = captura e trata a exceção.

finally = executa sempre.

throw = lança uma exceção.

rethrow = relança a mesma exceção.

assert = verifica condições durante o desenvolvimento.
```
