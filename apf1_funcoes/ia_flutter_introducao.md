# MaterialApp

## O que é o MaterialApp?

O `MaterialApp` é o widget principal de uma aplicação Flutter.

Ele é responsável por:

- Definir a tela inicial.
- Configurar o tema.
- Gerenciar as rotas.
- Aplicar o Material Design.
- Configurar a aplicação.

Exemplo:

```dart
void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}
```

---

## Quais parâmetros são importantes no MaterialApp?

### home

Define a primeira tela da aplicação.

```dart
MaterialApp(
  home: HomePage(),
)
```

---

### title

Nome da aplicação.

```dart
MaterialApp(
  title: 'Meu App',
)
```

---

### theme

Personaliza as cores e estilos da aplicação.

```dart
MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
)
```

---

### routes

Define as rotas (telas) da aplicação.

```dart
MaterialApp(
  routes: {
    '/': (context) => HomePage(),
    '/perfil': (context) => PerfilPage(),
  },
)
```

---

### debugShowCheckedModeBanner

Remove a faixa "DEBUG".

```dart
MaterialApp(
  debugShowCheckedModeBanner: false,
)
```

---

## O que são os imports?

Os `import` são utilizados para acessar bibliotecas, arquivos e funcionalidades em outros arquivos do projeto.

Tipos de import:

- Bibliotecas do Flutter.
- Bibliotecas do Dart.
- Arquivos do próprio projeto.
- Pacotes externos.

Exemplos:

```dart
import 'package:flutter/material.dart';
import 'dart:io';
import 'home_page.dart';
```

---

## Quando utilizar?

Sempre que for necessário utilizar classes, funções ou widgets que estão em outro arquivo ou biblioteca.

---

## O que é o Material Design?

O Material Design é um conjunto de regras de design criado pelo Google para tornar os aplicativos mais organizados, bonitos e intuitivos.

No Flutter ele já vem integrado através da biblioteca:

```dart
import 'package:flutter/material.dart';
```

---

## Como ele é utilizado?

Os widgets do Flutter seguem automaticamente o padrão do Material Design.

Exemplo:

```dart
Scaffold(
  appBar: AppBar(),
  body: Center(),
)
```

---

## Vantagens

- Interface moderna.
- Componentes prontos.
- Padronização.
- Fácil personalização.

---

## Quais são os principais widgets?

Alguns dos widgets mais utilizados são:

- MaterialApp
- Scaffold
- AppBar
- Text
- Center
- Column
- Row
- Container
- ElevatedButton
- TextField
- Icon
- ListView
- Card
- FloatingActionButton

Exemplo:

```dart
Scaffold(
  appBar: AppBar(
    title: Text("Meu App"),
  ),
)
```

---

## O que é um StatelessWidget?

São widgets que não mudam seu estado depois de serem criados.

São utilizados para exibir informações fixas.

Exemplo:

- Títulos
- Ícones
- Textos
- Logos

Exemplo:

```dart
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text("Olá");
  }
}
```

---

## Quando utilizar?

Quando o conteúdo não sofre alterações.

---

## Limitações dos Widgets Stateless

Um StatelessWidget não consegue alterar seus próprios dados.

Não pode utilizar:

- setState()
- Atualizações de interface
- Alterações em tempo real

Caso precise atualizar informações, utilize um StatefulWidget.

---

## O que é o setState()?

É um método utilizado para informar ao Flutter que alguma informação foi alterada.

Após chamar o setState(), o método build() é executado novamente.

Exemplo:

```dart
setState(() {
  contador++;
});
```

---

## Quando utilizar?

Sempre que algum dado mudar e a interface precisar ser atualizada.

---