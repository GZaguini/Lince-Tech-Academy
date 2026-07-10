import 'package:flutter/material.dart';
import '../models/pessoa.dart';

// Classe responsável por gerenciar o estado da lista de pessoas.
// O ChangeNotifier permite avisar as telas sempre que houver alterações.
class EstadoListaDePessoas with ChangeNotifier {
  // Lista privada onde as pessoas são armazenadas.
  final List<Pessoa> _listaDePessoas = [];

  // Retorna uma cópia somente leitura da lista de pessoas.
  List<Pessoa> get pessoas => List.unmodifiable(_listaDePessoas);

  // Adiciona uma nova pessoa na lista e atualiza a interface.
  void incluir(Pessoa pessoa) {
    _listaDePessoas.add(pessoa);
    notifyListeners();
  }

  // Remove uma pessoa da lista e atualiza a interface.
  void excluir(Pessoa pessoa) {
    _listaDePessoas.remove(pessoa);
    notifyListeners();
  }

  // Substitui uma pessoa existente pelos novos dados.
  void editar(Pessoa antiga, Pessoa nova) {
    final indice = _listaDePessoas.indexOf(antiga);

    if (indice != -1) {
      _listaDePessoas[indice] = nova;
      notifyListeners();
    }
  }
}
