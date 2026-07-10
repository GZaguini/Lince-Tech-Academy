# Lince Tech Academy – Flutter: Gerenciamento de estados

## O que é gerenciamento de estados em Flutter e por que é importante?

O gerenciamento de estados é a forma de controlar e atualizar as informações da aplicação.

Ele é importante porque permite que a interface seja atualizada automaticamente quando algum dado é alterado.

**Entendi que sempre que um valor muda, o estado precisa ser atualizado para refletir essa mudança na tela.:** 

---

## Qual a diferença entre estado local e estado global em um aplicativo Flutter?

- **Estado local:** é utilizado apenas dentro de um widget.
- **Estado global:** pode ser compartilhado entre várias telas ou widgets.

**Se apenas uma tela utiliza a informação, posso usar estado local. Se várias telas precisam acessar o mesmo dado, é melhor usar estado global.:** 

---

## Quais as vantagens de usar um gerenciador de estados em um projeto Flutter?

- Organiza melhor o código.
- Facilita a manutenção.
- Evita código repetido.
- Permite compartilhar informações entre várias telas.

**Conforme o projeto cresce, utilizar um gerenciador de estados deixa tudo muito mais organizado.:** 

---

## O que é o pacote Provider em Flutter e para que ele serve?

O Provider é um pacote utilizado para compartilhar informações entre widgets sem precisar passar variáveis manualmente por vários níveis da aplicação.

**O Provider facilita bastante quando várias telas precisam acessar os mesmos dados.:** 

---

## Como o Provider ajuda a evitar a reconstrução desnecessária de widgets?

Ele atualiza apenas os widgets que realmente dependem da informação alterada.

Assim, o restante da interface continua igual.

**Isso melhora o desempenho da aplicação.:** 

---

## Como o Provider simplifica o gerenciamento de estados em Flutter?

Ele centraliza os dados em uma única classe e permite que qualquer widget acesse essas informações quando necessário.

**Em vez de passar informações entre vários widgets, basta acessar o Provider.:** 

---

## O que é o ChangeNotifierProvider e como ele funciona?

É um Provider utilizado junto com uma classe que herda de `ChangeNotifier`.

Sempre que um dado é alterado, chamamos `notifyListeners()`, fazendo com que os widgets sejam atualizados.

**O ChangeNotifierProvider é um dos gerenciadores de estado mais utilizados em Flutter.:** 

---

## Como posso fornecer um ChangeNotifier para a árvore de widgets usando ChangeNotifierProvider?

Criamos uma classe que herda de `ChangeNotifier` e depois disponibilizamos essa classe utilizando o `ChangeNotifierProvider`.

Assim todos os widgets abaixo dele conseguem acessar os dados.

**O Provider normalmente fica próximo da raiz da aplicação.:** 

---

## Como posso atualizar o estado do meu aplicativo usando providers?

Alterando os valores dentro da classe do Provider e chamando:

```dart
notifyListeners();
```

Isso faz com que todos os widgets que utilizam aquele estado sejam atualizados automaticamente.

**Sempre que modificar um dado importante, devo lembrar de chamar `notifyListeners()`.:** 

---

## O que é o Consumer e como ele funciona?

O Consumer é um widget utilizado para ouvir alterações feitas pelo Provider.

Quando o estado muda, apenas o Consumer é reconstruído.

**O Consumer evita reconstruções desnecessárias.:** 

---

## Como o Consumer ajuda a reconstruir apenas os widgets que dependem do estado?

Ele observa apenas o Provider utilizado.

Quando ocorre uma alteração, somente aquele trecho da interface é atualizado.

**Isso deixa o aplicativo mais eficiente.:** 

---

## Como posso usar o Consumer para acessar o estado fornecido pelo ChangeNotifierProvider?

Dentro do Consumer utilizamos:

```dart
Consumer<MeuProvider>(
  builder: (context, provider, child) {
    return Text(provider.valor.toString());
  },
)
```

Assim conseguimos acessar os dados do Provider.

**O Consumer é muito utilizado para exibir informações que mudam com frequência.:** 

---

## Qual a diferença entre usar Consumer e Provider.of() para acessar o estado?

- **Consumer:** reconstrói apenas o widget onde ele está.
- **Provider.of():** pode reconstruir um widget maior dependendo da forma como for utilizado.

**Sempre que possível, o Consumer é a melhor opção para evitar reconstruções grandes.:** 

---

## Como posso otimizar o uso do Consumer para evitar reconstruções desnecessárias?

Utilizando o Consumer apenas nos widgets que realmente precisam ser atualizados.

Não é necessário envolver a tela inteira.

**Quanto menor a área reconstruída, melhor será o desempenho.:** 

---

## Crie um aplicativo simples com um contador que pode ser incrementado e decrementado, usando ChangeNotifierProvider e Consumer.

A IA explicou que o projeto pode ser dividido em:

- Classe CounterProvider.
- ChangeNotifierProvider no main.
- Consumer exibindo o valor.
- Dois botões:
  - Incrementar.
  - Decrementar.

Cada alteração chama `notifyListeners()`.

**Achei esse exemplo excelente para entender como funciona o Provider.:** 

---

## Crie um aplicativo de tema que permite ao usuário alternar entre temas claros e escuros, usando ChangeNotifierProvider e Consumer.

A IA explicou que basta criar um Provider contendo uma variável indicando se o tema é claro ou escuro.

Ao clicar no botão, o tema é alterado e o `notifyListeners()` atualiza toda a aplicação.

**Foi um bom exemplo para entender como compartilhar informações entre várias telas.:** 

---