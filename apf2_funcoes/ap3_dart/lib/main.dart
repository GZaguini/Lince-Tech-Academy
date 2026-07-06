import 'package:flutter/material.dart';
import 'dart:math';

// Cor de fundo do aplicativo.
const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

// Widget principal.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

// Widget que controla as alterações da tela.
class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  // Responsável por gerar números aleatórios.
  final random = Random();

  // Define se a forma será um quadrado ou círculo.
  bool quadrado = true;

  // Cor inicial da figura.
  Color cor = Colors.red;

  // Altera automaticamente o texto do botão.
  String get textoBotao =>
      quadrado ? 'Mudar para círculo' : 'Mudar para quadrado';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Linha dos botões.
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: EdgeInsets.all(8),

              child: ElevatedButton(

                child: Text(textoBotao),

                // Alterna entre círculo e quadrado.
                onPressed: () {
                  setState(() {
                    quadrado = !quadrado;
                  });
                },
              ),
            ),

            // Botão para sortear uma cor.
            ElevatedButton(
              child: const Text('Cor aleatória'),

              onPressed: () {

                setState(() {

                  switch (random.nextInt(7)) {

                    case 0:
                      print('Rosa');
                      cor = Colors.pink;
                      break;

                    case 1:
                      print('Ciano');
                      cor = Colors.cyan;
                      break;

                    case 2:
                      print('Vermelho');
                      cor = Colors.red;
                      break;

                    case 3:
                      print('Amarelo');
                      cor = Colors.yellow;
                      break;

                    case 4:
                      print('Laranja');
                      cor = Colors.orange;
                      break;

                    case 5:
                      print('Verde');
                      cor = Colors.green;
                      break;

                    case 6:
                      print('Azul');
                      cor = Colors.blue;
                      break;
                  }
                });
              },
            ),
          ],
        ),

        // Figura exibida na tela.
        Padding(
          padding: const EdgeInsets.all(8),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Container(

                decoration: BoxDecoration(

                  // Define o formato da figura.
                  shape: quadrado
                      ? BoxShape.rectangle
                      : BoxShape.circle,

                  // Define a cor sorteada.
                  color: cor,
                ),

                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}