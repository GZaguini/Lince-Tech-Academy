# Duvidas sobre Concorrência com Future

## O que é um Future em Dart e como ele me ajuda a lidar com tarefas que levam tempo?

Um `Future` representa um valor que estará disponível no futuro. Ele é utilizado para executar tarefas demoradas sem bloquear a execução do programa.

Exemplos de uso:

* Consultas a APIs.
* Leitura de arquivos.
* Download de imagens.
* Consultas a banco de dados.

O `Future` permite que o programa continue executando outras tarefas enquanto aguarda o resultado.

---

## O que significam os termos 'assíncrono' e 'síncrono'?

### Síncrono

As instruções são executadas uma após a outra. O programa precisa esperar uma tarefa terminar antes de continuar.

Exemplo:

```dart
print("Inicio");
print("Fim");
```

### Assíncrono

O programa pode iniciar uma tarefa demorada e continuar executando outras operações enquanto aguarda o resultado.

Exemplo:

```dart
await Future.delayed(Duration(seconds: 2));
```

---

## O que acontece se um Future falhar e como posso lidar com esse erro?

Quando ocorre um erro durante a execução de um Future, uma exceção é lançada.

O tratamento pode ser feito utilizando `try` e `catch`.

Exemplo:

```dart
try {
  await buscarDados();
} catch (e) {
  print(e);
}
```

Dessa forma o programa não é interrompido inesperadamente.

---

## Existe uma forma de executar várias tarefas assíncronas em paralelo?

Sim.

Podemos utilizar `Future.wait()` para executar várias operações assíncronas ao mesmo tempo.

Exemplo:

```dart
await Future.wait([
  tarefa1(),
  tarefa2(),
  tarefa3(),
]);
```

O programa aguardará a conclusão de todas as tarefas antes de continuar.

---

## Em quais situações devo usar Futures em meu código Dart?

Os Futures devem ser utilizados quando uma operação pode levar algum tempo para ser concluída.

Exemplos:

* Requisições HTTP.
* Download de arquivos.
* Upload de imagens.
* Consultas em banco de dados.
* Leitura de arquivos.
* Processamentos demorados.

---

## Quais cuidados devo tomar não usando await em funções Future?

Ao não utilizar `await`, o programa não espera o término da operação assíncrona.

Isso pode causar comportamentos inesperados.

Exemplo:

```dart
buscarDados();
print("Fim");
```

Saída:

```text
Fim
Dados carregados
```

Se for necessário aguardar o resultado da operação, deve-se utilizar `await`.

---

## Como lidar com erros usando Future?

Erros podem ser tratados utilizando `try/catch` juntamente com `async/await`.

Exemplo:

```dart
try {
  String resultado = await buscarDados();
  print(resultado);
} catch (e) {
  print("Erro: $e");
}
```

Também é possível utilizar o método `catchError()`.

Exemplo:

```dart
buscarDados()
  .then((resultado) {
    print(resultado);
  })
  .catchError((erro) {
    print(erro);
  });
```


