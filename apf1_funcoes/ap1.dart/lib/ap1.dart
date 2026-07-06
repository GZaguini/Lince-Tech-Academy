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

  // Objeto utilizado para gerar números aleatórios.
  final Random random = Random();

  // Sorteia uma nova cor para o texto.
  void sortearCor() {

    // Atualiza a interface com a nova cor.
    setState(() {

      corTexto = Color.fromARGB(

        // Opacidade máxima (255 = totalmente visível).
        255,

        // Valor aleatório do vermelho (0 a 255).
        random.nextInt(256),

        // Valor aleatório do verde (0 a 255).
        random.nextInt(256),

        // Valor aleatório do azul (0 a 255).
        random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    // Constrói a interface da aplicação.
    return Scaffold(

      // Barra superior do aplicativo.
      appBar: AppBar(
        title: const Text("Sorteio de Cor"),
      ),

      // Corpo da tela.
      body: Center(

        child: Column(

          // Centraliza os widgets verticalmente.
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Texto que terá sua cor alterada.
            Text(
              "Flutter",

              style: TextStyle(
                fontSize: 40,
                color: corTexto,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Espaçamento entre o texto e o botão.
            const SizedBox(height: 30),

            // Botão responsável por sortear uma nova cor.
            ElevatedButton(

              // Ao clicar, chama a função que gera uma nova cor.
              onPressed: sortearCor,

              child: const Text("Sortear cor"),
            ),
          ],
        ),
      ),
    );
  }
}