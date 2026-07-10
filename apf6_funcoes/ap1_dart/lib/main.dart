import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/estado_lista_pessoa.dart';
import 'screens/tela_inicial.dart';

void main() {
  runApp(
    // Disponibiliza o Provider para toda a aplicação.
    // Assim todas as telas podem acessar e modificar
    // a lista de pessoas cadastradas.
    ChangeNotifierProvider(
      create: (context) => EstadoListaDePessoas(),
      child: const MyApp(),
    ),
  );
}

// Classe principal do aplicativo.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove a faixa "DEBUG" do canto superior direito.
      debugShowCheckedModeBanner: false,

      // Define a primeira tela que será exibida
      // ao iniciar o aplicativo.
      home: const TelaInicial(),
    );
  }
}
