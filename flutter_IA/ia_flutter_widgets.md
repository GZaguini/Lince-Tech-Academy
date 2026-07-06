# Flutter: Widgets Básicos - Interação com IA

## Explique o conceito de um widget Row em Flutter.

O `Row` organiza widgets na horizontal, ou seja, um ao lado do outro.

**Sempre que precisar colocar elementos em uma linha, posso usar o Row.**
---

## Como posso adicionar espaçamento uniforme entre os widgets em um Row?

Posso utilizar:

- MainAxisAlignment.spaceEvenly
- MainAxisAlignment.spaceAround
- MainAxisAlignment.spaceBetween
- SizedBox()

**Existem várias maneiras de criar espaço entre os widgets.**

---

## Qual a diferença entre MainAxisAlignment e CrossAxisAlignment em um Row?

- MainAxisAlignment → controla o alinhamento horizontal.
- CrossAxisAlignment → controla o alinhamento vertical.

**No Row, o eixo principal é horizontal.**

---

## Explique o conceito de um widget Column em Flutter.

O `Column` organiza widgets na vertical, um abaixo do outro.

**É praticamente o contrário do Row.**
---

## Qual a diferença entre MainAxisAlignment e CrossAxisAlignment em um Column?

- MainAxisAlignment → controla o alinhamento vertical.
- CrossAxisAlignment → controla o alinhamento horizontal.

**No Column, o eixo principal é vertical.**

---

## Explique o conceito de um widget Stack em Flutter.

O `Stack` permite colocar widgets um sobre o outro.

**É muito usado para sobrepor imagens, textos e botões.**

---

## Quais as vantagens de usar Stack em vez de Row ou Column?

O Stack permite sobreposição de widgets, enquanto Row e Column apenas organizam os elementos.

Cada widget possui uma finalidade diferente.

---

## Como posso posicionar widgets específicos dentro de um Stack?

Utilizando o widget `Positioned`.

Com o Positioned consigo escolher exatamente onde o widget ficará.

---

## Como posso exibir uma imagem de um arquivo local em Flutter?

Utilizando:

```dart
Image.asset("assets/imagem.png")
```

A imagem deve estar cadastrada no `pubspec.yaml`.
Sem cadastrar a pasta de imagens no pubspec.yaml a imagem não aparece.

---

## Quais propriedades posso usar para controlar a aparência do texto (fonte, tamanho, cor)?

As principais são:

- fontSize
- color
- fontWeight
- fontStyle

Todas essas propriedades ficam dentro do TextStyle.

---

## Como posso exibir um texto em várias linhas?

- Posso escrever um texto grande ou utilizar `\n` para quebrar linhas.
- Também posso limitar a quantidade de linhas utilizando `maxLines`.

---

## Como posso criar uma lista de rolagem vertical em Flutter?

- Utilizando o widget `ListView`.
- O ListView já possui rolagem automaticamente.

---

## Como posso adicionar itens dinamicamente a um ListView?

- Utilizando o `ListView.builder()`.
- É recomendado quando existem muitos itens.

---

## Quais as diferenças entre ListView.builder e ListView.separated?

- builder → cria apenas os itens.
- separated → cria os itens e um separador entre eles.
---

## Como posso usar ListTile para criar itens de lista em um ListView?

O ListTile possui estrutura pronta com:

- leading
- title
- subtitle
- trailing

---

## Como posso tornar os itens ListTile interativos (clicáveis)?

Utilizando a propriedade:

```dart
onTap: () {}
```
---

## Quais as vantagens de usar ListTile em vez de widgets de texto simples?

O ListTile já possui um layout pronto para listas.

---

## Como os widgets são organizados dentro de um Stack?

Eles são empilhados conforme a ordem em que aparecem no código.

---

## Como posso exibir uma imagem da internet em Flutter?

Utilizando:

```dart
Image.network("https://...")
```
---

## Como posso adicionar um efeito de desvanecimento a uma imagem?

Posso utilizar widgets como:

- Opacity
- FadeInImage
---

## Como posso adicionar ícones e outros elementos visuais a um ListTile?

Utilizando as propriedades:

- leading
- trailing
- title
- subtitle
