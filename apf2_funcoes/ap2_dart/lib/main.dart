import 'package:flutter/material.dart';

// Cor de fundo do aplicativo.
const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

// Widget principal da aplicação.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // Tema escuro com cor de fundo personalizada.
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: MyWidget(),
      ),
    );
  }
}

// Widget responsável por montar a tela.
class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {

    // Organiza as pilhas lado a lado.
    return const Row(
      children: [

        // Primeira pilha.
        Pilha(
          backgroundColor: Colors.grey,
          children: [
            Colors.red,
            Colors.green,
            Colors.blue,
          ],
        ),

        // Segunda pilha.
        Pilha(
          backgroundColor: Colors.black,
          children: [
            Colors.cyan,
            Colors.purple,
            Colors.yellow,
          ],
        ),

        // Terceira pilha.
        Pilha(
          children: [
            Colors.red,
            Colors.yellow,
            Colors.blue,
          ],
        ),

        // Quarta pilha.
        Pilha(
          backgroundColor: Colors.white,
          children: [
            Colors.deepPurple,
            Colors.deepOrange,
            Colors.yellow,
            Colors.lime,
          ],
        ),
      ],
    );
  }
}

// Widget reutilizável que cria uma pilha de quadrados coloridos.
class Pilha extends StatelessWidget {
  const Pilha({
    this.backgroundColor,
    required this.children,
  });

  // Cor de fundo da pilha.
  final Color? backgroundColor;

  // Lista com as cores dos quadrados.
  final List<Color> children;

  @override
  Widget build(BuildContext context) {

    return Container(

      // Espaçamento entre as pilhas.
      margin: const EdgeInsets.all(8),

      // Cor de fundo.
      color: backgroundColor,

      // Tamanho do retângulo externo.
      width: 100,
      height: 100,

      child: Stack(

        children: [

          // Cria um quadrado para cada cor da lista.
          for (var index = 0; index < children.length; index++)

            Positioned(

              // Cada quadrado fica um pouco deslocado do anterior.
              top: index * 8 + 8,
              left: index * 8 + 8,

              child: Container(

                // Tamanho do quadrado.
                width: 50,
                height: 50,

                // Cor do quadrado.
                color: children[index],
              ),
            ),
        ],
      ),
    );
  }
}