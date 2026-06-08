# Orientação a Objetos 

## Quais são os principais conceitos da orientação a objetos?

Os principais conceitos da Programação Orientada a Objetos (POO) são:

- Classe
- Objeto
- Atributos
- Métodos
- Encapsulamento
- Abstração
- Herança
- Polimorfismo

Esses conceitos ajudam a organizar o código e representar elementos do mundo real dentro de um programa.

---

## Quais as vantagens de usar orientação a objetos em comparação com outras formas de programação?

A orientação a objetos oferece diversas vantagens:

- Melhor organização do código.
- Reutilização de código.
- Facilidade de manutenção.
- Maior modularização.
- Facilidade para trabalhar em projetos grandes.
- Melhor representação de objetos do mundo real.

---

## O que é uma classe e como ela se relaciona com objetos?

Uma classe é um modelo ou estrutura que define características e comportamentos.

Um objeto é uma instância de uma classe.

Exemplo:

- Classe: Pessoa
- Objeto: João

A classe define o que um objeto possui e o que ele pode fazer.

---

## O que são métodos e como eles funcionam dentro de uma classe?

Métodos são funções declaradas dentro de uma classe.

Eles representam ações que um objeto pode executar.

Exemplos:

- apresentar()
- calcularArea()
- abrir()

Os métodos podem acessar os atributos da própria classe e executar operações relacionadas ao objeto.

---

## Como posso acessar os métodos de um objeto em Dart?

Os métodos são acessados utilizando o operador ponto (`.`).

Exemplo:

```dart
pessoa.apresentar();
```
---

## O que são factories em Dart e quando devo usá-las?

Factories são construtores especiais utilizados para controlar a criação de objetos.

Diferente dos construtores comuns, uma factory pode:

- Validar informações antes de criar um objeto.
- Retornar um objeto já existente.
- Retornar diferentes tipos de objetos.
- Executar lógica antes da criação do objeto.

As factories são declaradas utilizando a palavra-chave `factory`.

### Exemplo

```dart
class Usuario {
  final String nome;

  Usuario._(this.nome);

  factory Usuario(String nome) {
    return Usuario._(nome.trim());
  }
}
```