import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/pessoa.dart';
import '../provider/estado_lista_pessoa.dart';

// Tela responsável pelo cadastro e edição de pessoas.
class TelaCadastroPessoa extends StatefulWidget {
  // Recebe uma pessoa quando for edição.
  // Caso seja nulo, será um novo cadastro.
  final Pessoa? pessoa;

  const TelaCadastroPessoa({super.key, this.pessoa});

  @override
  State<TelaCadastroPessoa> createState() => _TelaCadastroPessoaState();
}

class _TelaCadastroPessoaState extends State<TelaCadastroPessoa> {
  // Chave utilizada para validar o formulário.
  final _formKey = GlobalKey<FormState>();

  // Controllers responsáveis pelos campos de texto.
  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final telefoneController = TextEditingController();
  final githubController = TextEditingController();

  // Armazena o tipo sanguíneo selecionado.
  TipoSanguineo? tipoSanguineo;

  @override
  void initState() {
    super.initState();

    // Caso uma pessoa tenha sido enviada,
    // preenche automaticamente os campos.
    if (widget.pessoa != null) {
      nomeController.text = widget.pessoa!.nome;
      emailController.text = widget.pessoa!.email;
      telefoneController.text = widget.pessoa!.telefone;
      githubController.text = widget.pessoa!.github;
      tipoSanguineo = widget.pessoa!.tipoSanguineo;
    }
  }

  // Libera os controllers da memória ao fechar a tela.
  @override
  void dispose() {
    nomeController.dispose();
    emailController.dispose();
    telefoneController.dispose();
    githubController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.pessoa == null ? 'Cadastrar Pessoa' : 'Editar Pessoa',
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Form(
            key: _formKey,

            child: Column(
              children: [
                // Campo Nome
                TextFormField(
                  controller: nomeController,
                  decoration: const InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o nome';
                    }
                    return null;
                  },
                ),

                // Campo Email
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o email';
                    }
                    return null;
                  },
                ),

                // Campo Telefone
                TextFormField(
                  controller: telefoneController,
                  decoration: const InputDecoration(labelText: 'Telefone'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o telefone';
                    }
                    return null;
                  },
                ),

                // Campo GitHub
                TextFormField(
                  controller: githubController,
                  decoration: const InputDecoration(labelText: 'GitHub'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o GitHub';
                    }
                    return null;
                  },
                ),

                // Seleção do tipo sanguíneo.
                DropdownButtonFormField<TipoSanguineo>(
                  initialValue: tipoSanguineo,
                  decoration: const InputDecoration(
                    labelText: 'Tipo Sanguíneo',
                  ),
                  items: TipoSanguineo.values.map((tipo) {
                    return DropdownMenuItem(
                      value: tipo,
                      child: Text(nomeTipoSanguineo(tipo)),
                    );
                  }).toList(),
                  onChanged: (novoTipo) {
                    setState(() {
                      tipoSanguineo = novoTipo;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Selecione um tipo sanguíneo';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                // Botão responsável por cadastrar ou editar uma pessoa.
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Cria um novo objeto Pessoa com os dados do formulário.
                      final novaPessoa = Pessoa(
                        nome: nomeController.text,
                        email: emailController.text,
                        telefone: telefoneController.text,
                        github: githubController.text,
                        tipoSanguineo: tipoSanguineo!,
                      );

                      // Obtém o Provider.
                      final provider = context.read<EstadoListaDePessoas>();

                      // Verifica se é cadastro ou edição.
                      if (widget.pessoa == null) {
                        provider.incluir(novaPessoa);
                      } else {
                        provider.editar(widget.pessoa!, novaPessoa);
                      }

                      // Retorna para a tela anterior.
                      Navigator.pop(context);
                    }
                  },

                  child: Text(
                    widget.pessoa == null ? 'Cadastrar' : 'Salvar Alterações',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
