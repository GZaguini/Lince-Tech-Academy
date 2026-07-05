import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaInicial(),
    ),
  );
}

// Tela principal
class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  // Gera números aleatórios
  final Random random = Random();

  // Guarda qual botão está correto
  // 0 = A
  // 1 = B
  // 2 = C
  late int botaoCorreto;

  // Número de tentativas
  int tentativas = 0;

  // Cor do fundo
  Color corFundo = Colors.white;

  // Mensagem exibida
  String mensagem = "Escolha um botão";

  @override
  void initState() {
    super.initState();

    // Sorteia um botão quando o aplicativo inicia
    botaoCorreto = random.nextInt(3);
  }

  // Função chamada quando o usuário clica em um botão
  void verificarBotao(int botaoEscolhido) {

    setState(() {

      // Acertou
      if (botaoEscolhido == botaoCorreto) {

        corFundo = Colors.green;
        mensagem = "Você acertou!";

      } else {

        // Errou
        tentativas++;

        if (tentativas >= 2) {

          corFundo = Colors.red;
          mensagem = "Você perdeu!";

        } else {

          mensagem = "Errou! Tente novamente.";

        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: corFundo,

      appBar: AppBar(
        title: const Text("Jogo dos Botões"),
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(
              mensagem,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                verificarBotao(0);
              },
              child: const Text("A"),
            ),

            ElevatedButton(
              onPressed: () {
                verificarBotao(1);
              },
              child: const Text("B"),
            ),

            ElevatedButton(
              onPressed: () {
                verificarBotao(2);
              },
              child: const Text("C"),
            ),

          ],
        ),
      ),
    );
  }
}