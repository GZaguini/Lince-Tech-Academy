import 'dart:math';
import 'package:flutter/material.dart';

// Ponto de entrada da aplicação.
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaJogo(),
    ),
  );
}

// Enum responsável por representar os estados possíveis do jogo.
enum EstadoJogo {
  jogando,
  ganhou,
  perdeu,
}

// Widget principal da aplicação.
class TelaJogo extends StatefulWidget {
  const TelaJogo({super.key});

  @override
  State<TelaJogo> createState() => _TelaJogoState();
}

// Classe responsável por controlar o estado do jogo.
class _TelaJogoState extends State<TelaJogo> {

  // Gera números aleatórios.
  final Random random = Random();

  // Guarda qual botão será o correto.
  late int botaoCorreto;

  // Número de tentativas do jogador.
  int tentativas = 0;

  // Contadores de vitórias e derrotas.
  int vitorias = 0;
  int derrotas = 0;

  // Estado atual do jogo.
  EstadoJogo estado = EstadoJogo.jogando;

  @override
  void initState() {
    super.initState();

    // Inicia uma nova partida quando o aplicativo abre.
    iniciarJogo();
  }

  // Reinicia todas as informações necessárias para um novo jogo.
  void iniciarJogo() {

    // Sorteia um botão entre A, B e C.
    botaoCorreto = random.nextInt(3);

    // Reinicia as tentativas.
    tentativas = 0;

    // Define o estado inicial do jogo.
    estado = EstadoJogo.jogando;
  }

  // Verifica se o botão escolhido está correto.
  void verificarBotao(int botaoEscolhido) {

    // Impede novas jogadas caso o jogo já tenha terminado.
    if (estado != EstadoJogo.jogando) return;

    // Atualiza a interface.
    setState(() {

      // Usuário acertou.
      if (botaoEscolhido == botaoCorreto) {

        estado = EstadoJogo.ganhou;

        // Soma uma vitória.
        vitorias++;

      } else {

        // Usuário errou.
        tentativas++;

        // Se atingir duas tentativas, perde o jogo.
        if (tentativas >= 2) {

          estado = EstadoJogo.perdeu;

          // Soma uma derrota.
          derrotas++;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    // Constrói a interface principal.
    return Scaffold(

      // Exibe uma tela diferente conforme o estado do jogo.
      body: switch (estado) {

        // Tela exibida enquanto o jogo está acontecendo.
        EstadoJogo.jogando => TelaJogando(
            verificarBotao: verificarBotao,
            vitorias: vitorias,
            derrotas: derrotas,
            tentativas: tentativas,
          ),

        // Tela exibida quando o jogador vence.
        EstadoJogo.ganhou => TelaResultado(
            cor: Colors.green,
            mensagem: "Você ganhou!",
            vitorias: vitorias,
            derrotas: derrotas,

            // Reinicia a partida.
            reiniciar: () {
              setState(() {
                iniciarJogo();
              });
            },
          ),

        // Tela exibida quando o jogador perde.
        EstadoJogo.perdeu => TelaResultado(
            cor: Colors.red,
            mensagem: "Você perdeu!",
            vitorias: vitorias,
            derrotas: derrotas,

            // Reinicia a partida.
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

// ===================================
// Tela exibida durante a partida.
// ===================================

class TelaJogando extends StatelessWidget {

  // Função responsável por verificar o botão clicado.
  final Function(int) verificarBotao;

  // Informações exibidas na tela.
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

    // Constrói a interface da tela de jogo.
    return Container(

      color: Colors.white,
      width: double.infinity,

      child: Column(

        // Centraliza todos os widgets.
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          // Exibe o número de vitórias.
          Text(
            "Vitórias: $vitorias",
            style: const TextStyle(fontSize: 22),
          ),

          // Exibe o número de derrotas.
          Text(
            "Derrotas: $derrotas",
            style: const TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 20),

          // Exibe a quantidade de tentativas utilizadas.
          Text(
            "Tentativas: $tentativas/2",
            style: const TextStyle(fontSize: 20),
          ),

          const SizedBox(height: 30),

          // Botão A.
          ElevatedButton(
            onPressed: () => verificarBotao(0),
            child: const Text("A"),
          ),

          // Botão B.
          ElevatedButton(
            onPressed: () => verificarBotao(1),
            child: const Text("B"),
          ),

          // Botão C.
          ElevatedButton(
            onPressed: () => verificarBotao(2),
            child: const Text("C"),
          ),
        ],
      ),
    );
  }
}

// ===================================
// Tela exibida ao ganhar ou perder.
// ===================================

class TelaResultado extends StatelessWidget {

  // Cor de fundo da tela.
  final Color cor;

  // Mensagem apresentada ao usuário.
  final String mensagem;

  // Função responsável por reiniciar o jogo.
  final VoidCallback reiniciar;

  // Contadores de vitórias e derrotas.
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

    // Constrói a tela de resultado.
    return Container(

      color: cor,
      width: double.infinity,

      child: Column(

        // Centraliza todos os widgets.
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          // Exibe a mensagem de vitória ou derrota.
          Text(
            mensagem,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          // Exibe a quantidade de vitórias.
          Text(
            "Vitórias: $vitorias",
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),

          // Exibe a quantidade de derrotas.
          Text(
            "Derrotas: $derrotas",
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 30),

          // Botão responsável por iniciar uma nova partida.
          ElevatedButton(
            onPressed: reiniciar,
            child: const Text("Reiniciar"),
          ),
        ],
      ),
    );
  }
}