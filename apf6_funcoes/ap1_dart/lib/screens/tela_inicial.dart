import 'package:flutter/material.dart';
import 'tela_lista_pessoas.dart';
import 'tela_cadastro_pessoa.dart';

// Tela inicial do aplicativo.
// Possui os botões para acessar as demais telas.
class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tipos Sanguíneos")),

      body: Center(
        child: Column(
          // Centraliza os botões verticalmente.
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // Botão que abre a tela de listagem de pessoas.
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

            // Botão que abre a tela de cadastro de uma nova pessoa.
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
