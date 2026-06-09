# Orientação a Objetos 

## O que significa 'sobrescrever' um método em Dart e por que eu faria isso?

Sobrescrever (override) um método significa redefinir em uma classe filha um método que já existe na classe pai. Isso permite personalizar ou alterar o comportamento herdado.

Utiliza-se a anotação `@override` para indicar que o método está sendo sobrescrito.

---

## Como posso chamar o método original de uma classe pai em um método sobrescrito?

Utiliza-se a palavra-chave `super`.

Exemplo:

```dart
super.metodo();
```

Isso executa a implementação original da classe pai antes ou depois de adicionar novas funcionalidades.

---

## Como posso criar um getter para acessar um atributo privado de uma classe?

Um getter é criado utilizando a palavra-chave `get`.

Exemplo:

```dart
String get nome => _nome;
```

Ele permite acessar um atributo privado sem expô-lo diretamente.

---

## Em quais situações é melhor usar getters e setters em vez de acessar atributos diretamente?

Getters e setters são úteis quando é necessário controlar o acesso aos atributos, realizar validações ou aplicar regras de negócio antes de ler ou alterar um valor.

Além disso, ajudam a aplicar o conceito de encapsulamento.

---

## O que é uma 'classe abstrata' e como ela difere de uma classe normal?

Uma classe abstrata é uma classe que não pode ser instanciada diretamente.

Ela serve como modelo para outras classes, podendo conter métodos abstratos que deverão ser implementados pelas classes filhas.

Já uma classe normal pode ser instanciada normalmente.

---

## Quando devo usar classes abstratas em vez de classes concretas?

Classes abstratas devem ser utilizadas quando se deseja definir comportamentos obrigatórios para um conjunto de classes relacionadas.

Elas são úteis quando existe uma ideia geral do que as classes devem fazer, mas cada uma terá sua própria implementação.

---

## O que é 'herança' em Dart e como ela funciona?

Herança é um mecanismo que permite que uma classe herde atributos e métodos de outra classe.

Em Dart utiliza-se a palavra-chave `extends`.

A classe filha reutiliza características da classe pai e pode adicionar novas funcionalidades ou sobrescrever métodos existentes.

---

## Qual a diferença entre herança e composição?

Herança representa uma relação do tipo "é um".

Exemplo:

```dart
class Cachorro extends Animal
```

Composição representa uma relação do tipo "tem um".

Exemplo:

```dart
class Carro {
  Motor motor = Motor();
}
```

Na composição, uma classe utiliza outra como parte de sua estrutura.

---

## O que é uma 'interface' em Dart e como ela define um contrato de comportamento?

Uma interface define um conjunto de métodos que uma classe deve implementar.

Ela funciona como um contrato, garantindo que determinadas funcionalidades existam nas classes que a implementarem.

---

## Como uma classe pode implementar uma interface?

Utilizando a palavra-chave `implements`.

Exemplo:

```dart
class Retangulo implements Forma {
  @override
  double calcularArea() {
    return 10 * 5;
  }
}
```

A classe deve implementar todos os métodos definidos pela interface.

---

## Qual a diferença entre herança e implementação de interfaces?

Na herança (`extends`), a classe herda atributos e métodos da classe pai.

Na implementação de interfaces (`implements`), a classe não herda código, mas é obrigada a implementar todos os métodos definidos pela interface.

---

## Quais cenários devo usar métodos estáticos em vez de métodos de instância?

Métodos estáticos devem ser utilizados quando a funcionalidade não depende dos dados de um objeto específico.

Eles são muito usados para funções utilitárias, cálculos e operações gerais.

---

## Como posso acessar um método estático sem criar uma instância da classe?

Utilizando diretamente o nome da classe.

Exemplo:

```dart
Calculadora.somar(2, 3);
```

Não é necessário criar um objeto da classe.

---

## O que são 'enumeradores' em Dart e para que servem?

Enumeradores (`enum`) são tipos que representam um conjunto fixo de valores.

Eles ajudam a organizar informações e evitam o uso de valores inválidos.

Exemplo:

```dart
enum Status {
  pendente,
  aprovado,
  cancelado
}
```

---

## Em quais situações é melhor usar enumeradores em vez de constantes?

Enums são mais indicados quando existe um conjunto limitado de opções relacionadas.

Eles tornam o código mais legível, organizado e seguro do que utilizar várias constantes separadas.
