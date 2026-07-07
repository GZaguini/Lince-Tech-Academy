# Flutter: Rotas

## O que são rotas anônimas em Flutter e como elas funcionam?

Rotas anônimas são uma forma simples de navegar entre telas. Em vez de dar um nome para a tela, ela é criada diretamente no `Navigator.push()`.

**São indicadas para aplicativos pequenos ou quando a navegação acontece poucas vezes.:** 

---

## Quais métodos do Navigator são comumente utilizados e por quê?

- `Navigator.push()` → Abre uma nova tela.
- `Navigator.pop()` → Fecha a tela atual e volta para a anterior.
- `Navigator.pushReplacement()` → Substitui a tela atual por outra.
- `Navigator.pushNamed()` → Navega usando o nome da rota.
- `Navigator.popUntil()` → Volta para uma tela específica.

**Os mais utilizados são `push()` e `pop()`.:** 

---

## Qual a função do Navigator.push() na navegação com rotas anônimas?

O `Navigator.push()` abre uma nova tela e mantém a tela anterior na memória, permitindo voltar usando `Navigator.pop()`.

**É como empilhar uma nova página sobre a atual.:** 

---

## Quais as vantagens e desvantagens de usar rotas anônimas?

### Vantagens
- Simples de implementar.
- Fácil para projetos pequenos.
- Não precisa cadastrar rotas.

### Desvantagens
- Pode deixar o código repetitivo.
- Fica mais difícil organizar projetos grandes.

**Ideal para poucas telas.:** 

---

## O que são rotas nomeadas em Flutter e como elas funcionam?

Rotas nomeadas utilizam um nome (String) para identificar cada tela.

Exemplo:

```dart
Navigator.pushNamed(context, '/home');
```

**Observação:** Todas as rotas são registradas no `MaterialApp`.

---

## Como posso navegar para uma rota nomeada específica?

Utilizando:

```dart
Navigator.pushNamed(context, '/nomeDaRota');
```

**A rota precisa existir na lista de rotas do aplicativo.:** 

---

## Quais as vantagens de usar rotas nomeadas em relação às rotas anônimas?

- Código mais organizado.
- Facilita manutenção.
- Melhor para aplicativos grandes.
- Evita repetir código.

**Quanto maior o projeto, mais vantagem elas oferecem.:** 

---

## Como posso definir rotas nomeadas em meu aplicativo Flutter?

Dentro do `MaterialApp`, utilizando o parâmetro `routes`.

Exemplo:

```dart
MaterialApp(
  routes: {
    '/': (context) => HomePage(),
    '/segunda': (context) => SegundaTela(),
  },
)
```

**Cada rota recebe um nome e a tela correspondente.:** 

---

## Como posso acessar os parâmetros passados em uma rota nomeada?

Utilizando:

```dart
final dados = ModalRoute.of(context)!.settings.arguments;
```

ou

```dart
final nome = ModalRoute.of(context)!.settings.arguments as String;
```

**É possível enviar qualquer objeto como parâmetro.:** 

---

## Como posso tornar os parâmetros opcionais em uma rota nomeada?

Basta verificar se o parâmetro é nulo antes de utilizá-lo.

Exemplo:

```dart
final nome = ModalRoute.of(context)?.settings.arguments as String?;
```

ou

```dart
nome ?? 'Visitante';
```

**Isso evita erros caso nenhum parâmetro seja enviado.:** 

---

## Quais cuidados devo ter ao usar as rotas?

- Verificar se a rota existe.
- Evitar nomes duplicados.
- Enviar parâmetros corretos.
- Sempre usar `pop()` para voltar quando necessário.

**Um pequeno erro no nome da rota impede a navegação.:** 

---

## Quais as boas práticas ao usar rotas em Flutter?

- Utilizar rotas nomeadas em projetos maiores.
- Dar nomes claros às rotas.
- Organizar as telas em arquivos separados.
- Evitar repetir código de navegação.

**Um projeto organizado facilita futuras alterações.:** 

---

## Traga um exemplo de galeria navegando entre imagens usando rotas anônimas.

Uma tela pode mostrar uma lista de imagens.

Ao tocar em uma imagem:

- Utiliza `Navigator.push()`.
- Abre uma nova tela.
- Exibe a imagem em tamanho maior.

**Cada clique cria uma nova tela usando rota anônima.:** 

---

## Crie um fluxo com várias telas, passando pelos times brasileiros usando rotas nomeadas e parâmetros.

Fluxo simples:

- Tela inicial
- Botão "Flamengo"
- Botão "Palmeiras"
- Botão "Corinthians"

Ao clicar:

```dart
Navigator.pushNamed(
  context,
  '/time',
  arguments: 'Flamengo',
);
```

Na tela do time:

```dart
final time = ModalRoute.of(context)!.settings.arguments as String;
```

Exibe:

```
Time escolhido:
Flamengo
```

**O mesmo código serve para qualquer time, mudando apenas o parâmetro enviado.:** 

---