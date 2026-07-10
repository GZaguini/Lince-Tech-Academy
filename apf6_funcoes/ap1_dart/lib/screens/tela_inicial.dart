import 'package:flutter/material.dart';
import 'tela_lista_pessoas.dart';
import 'tela_cadastro_pessoa.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tipos Sanguíneos"),
      ),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TelaListaPessoas(),
      ),
    );
  },
  child: const Text("Listar Pessoas"),
),

      const SizedBox(height: 20),

      ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TelaCadastroPessoa(),
      ),
    );
  },
  child: const Text("Nova Pessoa"),
),

    ],
  ),
),
    );
  }
}