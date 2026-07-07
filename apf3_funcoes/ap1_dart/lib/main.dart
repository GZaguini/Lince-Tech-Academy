import 'package:flutter/material.dart';

// Ponto de entrada da aplicação.
void main() {
  runApp(Myapp());
}

// Widget principal da aplicação.
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  // Chave utilizada para validar o formulário.
  final _formKey = GlobalKey<FormState>();

  // Variáveis que recebem os valores digitados.
  String nome = '';
  int idade = 0;
  bool inativo = false;

  // Indica se o usuário já clicou em Salvar.
  bool salvou = false;

  // Variáveis que armazenam os dados salvos.
  String nomeSalvo = '';
  int idadeSalva = 0;
  bool inativoSalvo = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        // Barra superior da aplicação.
        appBar: AppBar(
          title: const Text("Formulário"),
        ),

        body: Padding(
          padding: const EdgeInsets.all(16.0),

          // Formulário utilizado para validar os campos.
          child: Form(
            key: _formKey,

            child: Column(
              children: [

                // Campo para digitar o nome.
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                  ),

                  // Atualiza a variável conforme o usuário digita.
                  onChanged: (valor) {
                    nome = valor;
                  },

                  // Regras de validação do campo Nome.
                  validator: (valor) {

                    if (valor == null || valor.isEmpty) {
                      return 'Por favor, insira um nome';
                    }

                    if (valor.length < 3) {
                      return 'O nome deve ter pelo menos 3 caracteres';
                    }

                    if (valor[0] != valor[0].toUpperCase()) {
                      return 'O nome deve começar com letra maiúscula';
                    }

                    if (RegExp(r'[0-9]').hasMatch(valor)) {
                      return 'O nome não pode conter números';
                    }

                    // Campo válido.
                    return null;
                  },
                ),

                // Campo para digitar a idade.
                TextFormField(

                  // Exibe o teclado numérico.
                  keyboardType: TextInputType.number,

                  decoration: const InputDecoration(
                    labelText: 'Idade',
                  ),

                  // Converte o texto digitado para inteiro.
                  onChanged: (valor) {
                    idade = int.tryParse(valor) ?? 0;
                  },

                  // Regras de validação da idade.
                  validator: (valor) {

                    if (valor == null || valor.isEmpty) {
                      return 'Por favor, insira uma idade';
                    }

                    int? idade = int.tryParse(valor);

                    if (idade == null) {
                      return 'Digite apenas números';
                    }

                    if (idade < 18) {
                      return 'A idade deve ser maior ou igual a 18';
                    }

                    return null;
                  },
                ),

                // Checkbox que indica se o usuário está inativo.
                CheckboxListTile(
                  title: const Text("Inativo"),
                  value: inativo,

                  onChanged: (valor) {
                    setState(() {
                      inativo = valor!;
                    });
                  },
                ),

                // Botão para salvar os dados.
                ElevatedButton(

                  onPressed: () {

                    // Valida todos os campos do formulário.
                    if (_formKey.currentState!.validate()) {

                      // Atualiza a tela somente se os dados forem válidos.
                      setState(() {

                        nomeSalvo = nome;
                        idadeSalva = idade;
                        inativoSalvo = inativo;

                        // Exibe o Container com os dados.
                        salvou = true;
                      });
                    }
                  },

                  child: const Text("Salvar"),
                ),

                // Exibe os dados somente após clicar em Salvar.
                if (salvou)

                  Container(

                    width: double.infinity,
                    padding: const EdgeInsets.all(16),

                    // Verde para ativo e cinza para inativo.
                    color: inativoSalvo ? Colors.grey : Colors.green,

                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        // Exibe os dados salvos.
                        Text("Nome: $nomeSalvo"),
                        Text("Idade: $idadeSalva"),
                        Text("Inativo: ${inativoSalvo ? "Sim" : "Não"}"),
                      ],
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