import 'dart:math';
import 'package:flutter/material.dart';

// Ponto de entrada do aplicativo.
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ),
  );
}

// Widget principal da aplicação.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Classe responsável por controlar o estado da tela.
class _MyHomePageState extends State<MyHomePage> {

  // Cor inicial do texto.
  Color corTexto = Colors.black;

  // Nome inicial da cor.
  String nomeCor = "Preto";

  // Objeto utilizado para gerar números aleatórios.
  final Random random = Random();

  // Sorteia uma nova cor para o texto.
  void sortearCor() {

    setState(() {

      switch (random.nextInt(6)) {

        case 0:
          corTexto = Colors.red;
          nomeCor = "Vermelho";
          break;

        case 1:
          corTexto = Colors.green;
          nomeCor = "Verde";
          break;

        case 2:
          corTexto = Colors.blue;
          nomeCor = "Azul";
          break;

        case 3:
          corTexto = Colors.orange;
          nomeCor = "Laranja";
          break;

        case 4:
          corTexto = Colors.purple;
          nomeCor = "Roxo";
          break;

        case 5:
          corTexto = Colors.cyan;
          nomeCor = "Ciano";
          break;

      }

    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Barra superior.
      appBar: AppBar(
        title: const Text("Sorteio de Cor"),
      ),

      // Corpo da tela.
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Exibe o nome da cor.
            Text(
              nomeCor,

              style: TextStyle(
                fontSize: 40,
                color: corTexto,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // Botão.
            ElevatedButton(

              onPressed: sortearCor,

              child: const Text("Sortear Cor"),

            ),

          ],

        ),

      ),

    );

  }

}