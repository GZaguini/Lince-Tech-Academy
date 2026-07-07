# Flutter: Formulários

## O que é um widget TextField em Flutter e para que ele serve?

O `TextField` é um widget utilizado para permitir que o usuário digite informações, como nome, e-mail ou senha.

**É o principal widget para entrada de texto no Flutter.** 

---

## Como posso obter o valor digitado pelo usuário em um TextField?

Utilizando um `TextEditingController`, que controla o texto digitado.

Exemplo:

```dart
final controller = TextEditingController();

TextField(
  controller: controller,
);
```

Para acessar o valor:

```dart
controller.text
```

**O `TextEditingController` também permite alterar o texto programaticamente.:** 

---

## Qual a diferença entre um TextField e um TextFormField?

### TextField

- Utilizado apenas para entrada de texto.
- Não possui validação integrada.

### TextFormField

- Também recebe texto.
- Possui suporte para validação utilizando `validator`.

**Em formulários completos normalmente utiliza-se o `TextFormField`.:** 

---

## Quais parâmetros importantes do TextField?

Os parâmetros mais utilizados são:

- `controller`
- `decoration`
- `keyboardType`
- `maxLength`
- `obscureText`
- `enabled`

**Esses parâmetros alteram o comportamento e a aparência do campo.:** 

---

## O que significa validar um campo de texto em Flutter?

Significa verificar se o usuário digitou uma informação correta antes de continuar.

Exemplos:

- Campo vazio.
- E-mail inválido.
- Senha curta.

**A validação melhora a qualidade dos dados recebidos.:** 

---

## Qual a diferença entre validação síncrona e assíncrona?

### Validação síncrona

Acontece imediatamente.

Exemplos:

- Campo obrigatório.
- Quantidade mínima de caracteres.

### Validação assíncrona

Depende de uma operação externa.

Exemplos:

- Consultar um banco de dados.
- Verificar se um e-mail já está cadastrado.

**A validação assíncrona normalmente utiliza `Future`.:** 

---

## O que é um widget CheckBox em Flutter e para que ele serve?

O `CheckBox` permite marcar ou desmarcar uma opção.

Exemplos:

- Aceitar termos.
- Receber notificações.

**Trabalha com valores booleanos (`true` ou `false`).:** 

---

## Como posso alterar a cor e a forma de um CheckBox?

A cor pode ser alterada utilizando propriedades como:

- `activeColor`
- `checkColor`

A forma pode ser alterada utilizando:

- `shape`

**É possível personalizar o CheckBox para combinar com o aplicativo.:** 

---

## O que é um widget Radio em Flutter e qual sua aplicabilidade?

O `Radio` permite selecionar apenas uma opção entre várias.

Exemplos:

- Sim ou Não.
- Masculino ou Feminino.

**Apenas uma opção pode permanecer selecionada.:** 

---

## Como posso alterar a cor e a forma de um Radio?

A cor pode ser alterada utilizando:

- `activeColor`

A aparência também pode ser personalizada pelo tema do aplicativo.

**Geralmente altera-se apenas a cor.:** 

---

## Como posso limitar o número de caracteres que o usuário pode digitar em um TextField?

Utilizando a propriedade:

```dart
maxLength: 20
```

**O Flutter mostra automaticamente a quantidade de caracteres digitados.:** 

---

## Como posso alterar o tipo de teclado exibido para um TextField (numérico, email etc.)?

Utilizando a propriedade:

```dart
keyboardType
```

Exemplos:

```dart
keyboardType: TextInputType.number
```

```dart
keyboardType: TextInputType.emailAddress
```

**Facilita a digitação para o usuário.:** 

---

## Como posso adicionar um ícone ao lado do texto em um TextField?

Utilizando a propriedade `decoration`.

Exemplo:

```dart
decoration: InputDecoration(
  prefixIcon: Icon(Icons.person),
)
```

**Os ícones deixam a interface mais intuitiva.:** 

---

## Como posso exibir mensagens de erro para o usuário se a validação falhar?

Utilizando a propriedade `validator` no `TextFormField`.

Exemplo:

```dart
validator: (value) {
  if (value == null || value.isEmpty) {
    return "Campo obrigatório";
  }
  return null;
}
```

**A mensagem aparece abaixo do campo quando a validação falha.:** 

---

## Crie um formulário com um CheckBox para "Aceitar termos e condições".

Pode-se utilizar um `CheckBox` ligado a uma variável booleana.

Exemplo de uso:

- [ ] Aceito os termos e condições.

**É muito utilizado em telas de cadastro.:** 

---

## Crie um grupo de Radios para permitir que o usuário selecione sua preferência (Aceita ketchup: Não, Sim).

Pode-se utilizar dois widgets `Radio` pertencentes ao mesmo grupo.

Exemplo:

- ( ) Sim
- ( ) Não

**Apenas uma opção pode ser selecionada por vez.:** 

---

## Como posso verificar se o texto digitado em um campo é um email válido?

É possível utilizar um `validator` verificando se o texto contém características de um e-mail.

Exemplo:

- Deve conter `@`.
- Deve conter `.`.

Também é possível utilizar expressões regulares (Regex) para uma validação mais completa.

**A validação de e-mail é muito comum em formulários de cadastro e login.:** 