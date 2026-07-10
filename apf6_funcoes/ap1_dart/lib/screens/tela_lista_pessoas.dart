import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/estado_lista_pessoa.dart';
import 'tela_cadastro_pessoa.dart';
import '../models/pessoa.dart';

class TelaListaPessoas extends StatefulWidget {
  const TelaListaPessoas({super.key});

  @override
  State<TelaListaPessoas> createState() => _TelaListaPessoasState();
}

class _TelaListaPessoasState extends State<TelaListaPessoas> {
  String filtro = '';

  Color corTipoSanguineo(TipoSanguineo tipo) {
    switch (tipo) {
      case TipoSanguineo.aPositivo:
        return Colors.blue;

      case TipoSanguineo.aNegativo:
        return Colors.red;

      case TipoSanguineo.bPositivo:
        return Colors.purple;

      case TipoSanguineo.bNegativo:
        return Colors.orange;

      case TipoSanguineo.oPositivo:
        return Colors.green;

      case TipoSanguineo.oNegativo:
        return Colors.yellow;

      case TipoSanguineo.abPositivo:
        return Colors.cyan;

      case TipoSanguineo.abNegativo:
        return Colors.white;
    }
  }

  Color corTexto(TipoSanguineo tipo) {
    if (tipo == TipoSanguineo.abNegativo ||
        tipo == TipoSanguineo.oNegativo) {
      return Colors.black;
    }

    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
   final lista = context.watch<EstadoListaDePessoas>().pessoas;

  final listaFiltrada = lista.where((pessoa) {
  return pessoa.nome.toLowerCase().contains(filtro.toLowerCase());
}).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Pessoas"),
      ),
      body: Column(
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: const InputDecoration(
          labelText: 'Pesquisar pessoa',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(),
        ),
        onChanged: (valor) {
          setState(() {
            filtro = valor;
          });
        },
      ),
    ),

    Expanded(
      child: ListView.builder(
        itemCount: listaFiltrada.length,
        itemBuilder: (context, index) {
          final pessoa = listaFiltrada[index];

          return Card(
            color: corTipoSanguineo(pessoa.tipoSanguineo),
            child: ListTile(
              textColor: corTexto(pessoa.tipoSanguineo),
              iconColor: corTexto(pessoa.tipoSanguineo),
              title: Text(pessoa.nome),
              subtitle: Text(
                'Email: ${pessoa.email}\n'
                'Telefone: ${pessoa.telefone}\n'
                'GitHub: ${pessoa.github}\n'
                'Tipo: ${nomeTipoSanguineo(pessoa.tipoSanguineo)}',
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TelaCadastroPessoa(
                            pessoa: pessoa,
                          ),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      context.read<EstadoListaDePessoas>().excluir(pessoa);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  ],
      ),
    );
  }
}