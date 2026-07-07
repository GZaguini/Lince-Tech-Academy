import 'package:flutter/material.dart';

// Ponto de entrada do aplicativo.
void main() {
  runApp(const MyApp());
}

// Widget principal do aplicativo.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      // Remove a faixa "Debug".
      debugShowCheckedModeBanner: false,

      // Define a primeira tela do aplicativo.
      home: CoresInicial(),
    );
  }
}

// Classe utilizada para armazenar uma cor e seu nome.
class Item {

  // Cor que será utilizada.
  final Color cor;

  // Nome da cor.
  final String nome;

  const Item(this.cor, this.nome);
}

// Tela principal que exibe a lista de cores.
class CoresInicial extends StatelessWidget {
  const CoresInicial({super.key});

  // Lista contendo todas as cores disponíveis.
  final cores = const [
    Item(Colors.red, "Vermelho"),
    Item(Colors.green, "Verde"),
    Item(Colors.blue, "Azul"),
    Item(Colors.purple, "Roxo"),
    Item(Colors.orange, "Laranja"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Barra superior.
      appBar: AppBar(
        title: const Text("Selecione uma cor"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),

      // Lista criada dinamicamente.
      body: ListView.builder(

        // Quantidade de itens da lista.
        itemCount: cores.length,

        // Cria um item para cada posição da lista.
        itemBuilder: (context, index) {

          // Obtém o item correspondente ao índice atual.
          final item = cores[index];

          // Retorna o widget responsável por desenhar a linha.
          return CorItem(item: item);
        },
      ),
    );
  }
}

// Widget responsável por desenhar cada item da lista.
class CorItem extends StatelessWidget {

  // Recebe um Item da lista.
  final Item item;

  const CorItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(

      // Executado quando o usuário toca na cor.
      onTap: () {

        // Navega para outra tela enviando o item selecionado.
        Navigator.of(context).push(

          MaterialPageRoute(

            // Cria a tela de detalhes.
            builder: (context) => TelaDetalheCor(item: item),
          ),
        );
      },

      // Caixa colorida que representa a linha da lista.
      child: Container(

        // Cor de fundo da linha.
        color: item.cor,

        // Altura da linha.
        height: 60,

        // Centraliza o texto.
        alignment: Alignment.center,

        // Espaçamento externo.
        margin: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 4,
        ),

        // Nome da cor.
        child: Text(
          item.nome,

          style: const TextStyle(

            // Cor da fonte.
            color: Colors.white,

            // Tamanho da fonte.
            fontSize: 18,

            // Deixa o texto em negrito.
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Segunda tela do aplicativo.
class TelaDetalheCor extends StatelessWidget {

  // Recebe o item escolhido na tela anterior.
  final Item item;

  const TelaDetalheCor({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Define a cor de fundo da tela.
      backgroundColor: item.cor,

      // Barra superior.
      appBar: AppBar(

        // Exibe o nome da cor.
        title: Text(item.nome),

        // Deixa a AppBar transparente.
        backgroundColor: Colors.transparent,

        // Remove a sombra da AppBar.
        elevation: 0,
      ),
    );
  }
}