import 'package:flutter/material.dart';
import '../models/pessoa.dart';

class EstadoListaDePessoas with ChangeNotifier {

  final List<Pessoa> _listaDePessoas = [];

  List<Pessoa> get pessoas => List.unmodifiable(_listaDePessoas);

  void incluir(Pessoa pessoa) {
    _listaDePessoas.add(pessoa);
    notifyListeners();
  }

  void excluir(Pessoa pessoa) {
    _listaDePessoas.remove(pessoa);
    notifyListeners();
  }

  void editar(Pessoa antiga, Pessoa nova) {
    final indice = _listaDePessoas.indexOf(antiga);

    if (indice != -1) {
      _listaDePessoas[indice] = nova;
      notifyListeners();
    }
  }
}