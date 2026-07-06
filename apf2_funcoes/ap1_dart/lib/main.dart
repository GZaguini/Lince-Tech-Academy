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
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

// Widget responsável por montar o layout.
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Organiza todos os elementos na vertical.
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // Primeira linha de quadrados.
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ],
          ),

          // Segunda parte do desenho.
          Container(
            color: Colors.yellow,

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,

              children: [

                // Retângulo roxo.
                Container(
                  margin: const EdgeInsets.all(8),
                  color: Colors.purple,
                  width: 50,
                  height: 100,
                ),

                // Retângulo ciano.
                Container(
                  margin: const EdgeInsets.all(8),
                  color: Colors.cyan,
                  width: 50,
                  height: 100,
                ),

                // Coluna com dois quadrados.
                Padding(
                  padding: const EdgeInsets.all(8),

                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      // Quadrado roxo.
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        color: Colors.purple,
                        width: 50,
                        height: 50,
                      ),

                      // Quadrado ciano.
                      Container(
                        color: Colors.cyan,
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Último bloco com o quadrado preto.
          Container(
            color: Colors.grey,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            width: 100,

            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  color: Colors.black,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}