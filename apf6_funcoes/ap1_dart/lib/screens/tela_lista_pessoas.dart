import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/estado_lista_pessoa.dart';
import 'tela_cadastro_pessoa.dart';
import '../models/pessoa.dart';

// Tela responsável por listar todas as pessoas cadastradas.
class TelaListaPessoas extends StatefulWidget {
  const TelaListaPessoas({super.key});

  @override
  State<TelaListaPessoas> createState() => _TelaListaPessoasState();
}

class _TelaListaPessoasState extends State<TelaListaPessoas> {
  // Texto digitado no campo de pesquisa.
  String filtro = '';

  // Retorna a cor correspondente ao tipo sanguíneo.
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

  // Define a cor do texto para melhorar a leitura.
  Color corTexto(TipoSanguineo tipo) {
    if (tipo == TipoSanguineo.abNegativo || tipo == TipoSanguineo.oNegativo) {
      return Colors.black;
    }

    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    // Obtém a lista de pessoas através do Provider.
    final lista = context.watch<EstadoListaDePessoas>().pessoas;

    // Filtra as pessoas conforme o texto digitado.
    final listaFiltrada = lista.where((pessoa) {
      return pessoa.nome.toLowerCase().contains(filtro.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Pessoas")),

      body: Column(
        children: [
          // Campo utilizado para pesquisar pessoas pelo nome.
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

          // Lista de pessoas cadastradas.
          Expanded(
            child: ListView.builder(
              itemCount: listaFiltrada.length,
              itemBuilder: (context, index) {
                final pessoa = listaFiltrada[index];

                return Card(
                  color: corTipoSanguineo(pessoa.tipoSanguineo),

                  child: ListTile(
                    // Ajusta automaticamente a cor do texto.
                    textColor: corTexto(pessoa.tipoSanguineo),
                    iconColor: corTexto(pessoa.tipoSanguineo),

                    title: Text(pessoa.nome),

                    subtitle: Text(
                      'Email: ${pessoa.email}\n'
                      'Telefone: ${pessoa.telefone}\n'
                      'GitHub: ${pessoa.github}\n'
                      'Tipo: ${nomeTipoSanguineo(pessoa.tipoSanguineo)}',
                    ),

                    // Botões de editar e excluir.
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Editar pessoa.
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    TelaCadastroPessoa(pessoa: pessoa),
                              ),
                            );
                          },
                        ),

                        // Excluir pessoa.
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            context.read<EstadoListaDePessoas>().excluir(
                              pessoa,
                            );
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
