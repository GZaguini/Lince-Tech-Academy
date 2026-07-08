# Flutter: Programação Assíncrona

## O que é programação assíncrona em Flutter e por que ela é importante?

Programação assíncrona permite executar tarefas que demoram um certo tempo sem travar a interface do aplicativo.

Exemplos:
- Buscar dados de uma API.
- Ler um arquivo.
- Salvar informações no banco de dados.

**Sem programação assíncrona o aplicativo pode "congelar" enquanto espera uma resposta.:** 

---

## Quais cuidados devo ter usando programação assíncrona?

- Sempre tratar possíveis erros.
- Utilizar `async` e `await` quando necessário.
- Não bloquear a interface do usuário.
- Mostrar um indicador de carregamento quando a operação demorar.

**O usuário deve perceber que o aplicativo continua funcionando.:** 

---

## O que são Isolates em Flutter?

Isolates são processos independentes que executam tarefas separadas da interface principal.

São usados para tarefas pesadas como:
- Processar imagens.
- Grandes cálculos.
- Manipulação de arquivos grandes.

**O Isolate evita travamentos da interface.:** 

---

## Quais cuidados devo ter ao usar Isolates em Flutter?

- Utilizar apenas quando necessário.
- Evitar criar muitos Isolates.
- Lembrar que eles não compartilham memória diretamente.

**Para tarefas simples o Future já é suficiente.:** 

---

## Qual o conceito do Loop de Eventos em Flutter?

O Event Loop controla todas as tarefas do aplicativo.

Enquanto uma tarefa espera resposta, outras continuam sendo executadas normalmente.

**É graças ao Event Loop que a interface continua funcionando durante uma requisição.:** 

---

## O que é um Future em Dart e como ele funciona?

Um `Future` representa um valor que será recebido no futuro.

Exemplo:
- Fazer uma requisição HTTP.
- Esperar 2 segundos.
- Ler um arquivo.

**O Future pode terminar com sucesso ou erro.:** 

---

## Como posso usar async e await para trabalhar com Futures?

Utilizamos:

- `async` para indicar que a função é assíncrona.
- `await` para esperar o resultado.

**O código fica mais organizado e fácil de entender.:** 

---

## Como posso lidar com erros em operações assíncronas usando try-catch?

Utilizamos:

```dart
try {
  // código
} catch (e) {
  // tratamento do erro
}
```

**Evita que o aplicativo feche caso aconteça algum erro.:** 

---

## Traga a explicação dos métodos HTTP.

### GET
Busca informações.

### POST
Envia novos dados.

### PUT
Atualiza todos os dados.

### PATCH
Atualiza apenas alguns dados.

### DELETE
Remove dados.

**São os métodos mais utilizados em APIs.:** 

---

## Como posso lidar com diferentes códigos de resposta HTTP (200, 404, 500)?

- **200** → Requisição realizada com sucesso.
- **404** → Recurso não encontrado.
- **500** → Erro interno do servidor.

**Sempre é importante verificar o código antes de utilizar os dados recebidos.:** 

---

## O que é JSON e como ele é usado em Flutter?

JSON é um formato utilizado para trocar informações entre sistemas.

Flutter normalmente recebe dados de APIs em formato JSON.

**Depois esses dados são convertidos para objetos Dart.:** 

---

## Como posso acessar valores específicos em um objeto JSON?

Utilizando a chave correspondente.

Exemplo:

```dart
json["nome"]
```

**Cada chave representa uma informação.:** 

---

## Como posso lidar com arrays (listas) em JSON em Flutter?

Os arrays são convertidos para listas (`List`).

Depois podem ser percorridos normalmente.

**Cada posição representa um objeto da lista.:** 

---

## Como posso iterar sobre os elementos de um array JSON?

Podemos utilizar:

- `for`
- `for in`
- `forEach`
- `map`

**Todos permitem percorrer os elementos da lista.:** 

---

## Por que é útil mapear JSON para classes Dart?

Porque o código fica:

- Mais organizado.
- Mais seguro.
- Mais fácil de manter.

**Em vez de acessar vários `json["campo"]`, utilizamos propriedades da classe.:** 

---

## Como posso usar factory para criar objetos Dart a partir de JSON?

Utilizando um construtor chamado `factory`.

Ele recebe um JSON e cria um objeto da classe.

**É o padrão mais utilizado em Flutter.:** 

---

## Como posso usar toJson() para converter objetos Dart em JSON?

Criando um método chamado:

```dart
toJson()
```

Ele devolve um `Map<String, dynamic>`.

**Muito utilizado quando precisamos enviar dados para uma API.:** 

---

## Como organizar minhas requisições no meu código Flutter? Quais as boas práticas realizando requisições?

Boas práticas:

- Separar as requisições em arquivos próprios.
- Evitar colocar requisições dentro da interface.
- Criar classes para representar os dados.
- Tratar erros.
- Reutilizar código.

**Projetos organizados ficam muito mais fáceis de manter.:** 

---

## Como posso exibir uma mensagem de carregamento enquanto a requisição HTTP está em andamento?

Podemos utilizar:

- `CircularProgressIndicator`
- `FutureBuilder`

Enquanto a resposta não chega, mostramos um indicador de carregamento.

**O usuário entende que o aplicativo ainda está trabalhando.:** 

---

## Dê exemplos de consumo de APIs em Flutter.

Algumas APIs públicas:

- ViaCEP
- JSONPlaceholder
- PokeAPI
- The Cat API
- OpenWeather

**Essas APIs são bastante utilizadas para estudos e testes.:** 

---