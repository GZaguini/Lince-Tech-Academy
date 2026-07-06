import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaJogo(),
    ),
  );
}

// Estados possíveis do jogo
enum EstadoJogo {
  jogando,
  ganhou,
  perdeu,
}

class TelaJogo extends StatefulWidget {
  const TelaJogo({super.key});

  @override
  State<TelaJogo> createState() => _TelaJogoState();
}

class _TelaJogoState extends State<TelaJogo> {
  final Random random = Random();

  late int botaoCorreto;

  int tentativas = 0;

  int vitorias = 0;
  int derrotas = 0;

  EstadoJogo estado = EstadoJogo.jogando;

  @override
  void initState() {
    super.initState();
    iniciarJogo();
  }

  void iniciarJogo() {
    botaoCorreto = random.nextInt(3);
    tentativas = 0;
    estado = EstadoJogo.jogando;
  }

  void verificarBotao(int botaoEscolhido) {
    if (estado != EstadoJogo.jogando) return;

    setState(() {
      if (botaoEscolhido == botaoCorreto) {
        estado = EstadoJogo.ganhou;
        vitorias++;
      } else {
        tentativas++;

        if (tentativas >= 2) {
          estado = EstadoJogo.perdeu;
          derrotas++;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switch (estado) {
        EstadoJogo.jogando => TelaJogando(
            verificarBotao: verificarBotao,
            vitorias: vitorias,
            derrotas: derrotas,
            tentativas: tentativas,
          ),

        EstadoJogo.ganhou => TelaResultado(
            cor: Colors.green,
            mensagem: "Você ganhou!",
            vitorias: vitorias,
            derrotas: derrotas,
            reiniciar: () {
              setState(() {
                iniciarJogo();
              });
            },
          ),

        EstadoJogo.perdeu => TelaResultado(
            cor: Colors.red,
            mensagem: "Você perdeu!",
            vitorias: vitorias,
            derrotas: derrotas,
            reiniciar: () {
              setState(() {
                iniciarJogo();
              });
            },
          ),
      },
    );
  }
}

// ============================
// Tela enquanto o jogo acontece
// ============================

class TelaJogando extends StatelessWidget {
  final Function(int) verificarBotao;
  final int tentativas;
  final int vitorias;
  final int derrotas;

  const TelaJogando({
    super.key,
    required this.verificarBotao,
    required this.tentativas,
    required this.vitorias,
    required this.derrotas,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            "Vitórias: $vitorias",
            style: const TextStyle(fontSize: 22),
          ),

          Text(
            "Derrotas: $derrotas",
            style: const TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 20),

          Text(
            "Tentativas: $tentativas/2",
            style: const TextStyle(fontSize: 20),
          ),

          const SizedBox(height: 30),

          ElevatedButton(
            onPressed: () => verificarBotao(0),
            child: const Text("A"),
          ),

          ElevatedButton(
            onPressed: () => verificarBotao(1),
            child: const Text("B"),
          ),

          ElevatedButton(
            onPressed: () => verificarBotao(2),
            child: const Text("C"),
          ),
        ],
      ),
    );
  }
}

// ============================
// Tela de vitória ou derrota
// ============================

class TelaResultado extends StatelessWidget {
  final Color cor;
  final String mensagem;
  final VoidCallback reiniciar;

  final int vitorias;
  final int derrotas;

  const TelaResultado({
    super.key,
    required this.cor,
    required this.mensagem,
    required this.reiniciar,
    required this.vitorias,
    required this.derrotas,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            mensagem,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "Vitórias: $vitorias",
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),

          Text(
            "Derrotas: $derrotas",
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),

          const SizedBox(height: 30),

          ElevatedButton(
            onPressed: reiniciar,
            child: const Text("Reiniciar"),
          ),
        ],
      ),
    );
  }
}