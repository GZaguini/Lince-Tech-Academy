import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/estado_lista_pessoa.dart';
import 'screens/tela_inicial.dart';

void main() {
  runApp(
    // Disponibiliza o Provider para todo o aplicativo.
    ChangeNotifierProvider(
      create: (context) => EstadoListaDePessoas(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // Remove a faixa "DEBUG".
      debugShowCheckedModeBanner: false,

      // Tela inicial do aplicativo.
      home: const TelaInicial(),
    );
  }
}