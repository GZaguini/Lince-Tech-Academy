import '../lib/menu.dart';

// Método principal da aplicação
void main() async {
   // Cria o menu do sistema.
  final menu = Menu();
// Inicia a execução do programa
  await menu.mostrar();
}