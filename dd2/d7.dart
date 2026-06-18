import 'dart:collection';
import 'dart:math';

void main() {
  // Cria a fila do mercado
  final fila = FilaMercado();

  // Cria o gerador de nomes aleatórios
  final gerador = GeradorDeNomes();

  // Adiciona 10 pessoas na fila
  for (var i = 0; i < 10; i++) {
    final pessoa = gerador.gerarNomeAleatorio();
    fila.entrarNaFila(pessoa);
  }

  // Atende todas as pessoas até a fila ficar vazia
  while (fila.fila.isNotEmpty) {
    fila.atender();
  }
}

/// Representa uma pessoa da fila
class Pessoa {
  Pessoa(this.nome, this.sobrenome);

  final String nome;
  final String sobrenome;
}

/// Responsável por gerar nomes aleatórios
class GeradorDeNomes {
  final random = Random();

  // Lista de nomes disponíveis
  final _nomes = ['João','Maria','Pedro','Ana','Lucas','Carla','José', 'Beatriz','Marcos','Letícia'];

  // Lista de sobrenomes disponíveis
  final _sobrenomes = ['Silva','Santos','Oliveira','Souza','Pereira','Almeida','Costa','Ribeiro','Rodrigues','Lima'];

  /// Gera uma pessoa com nome e sobrenome aleatórios
  Pessoa gerarNomeAleatorio() {
    final nome = _nomes[random.nextInt(_nomes.length)];
    final sobrenome = _sobrenomes[random.nextInt(_sobrenomes.length)];

    return Pessoa(nome, sobrenome);
  }
}

/// Controla a fila do mercado
class FilaMercado {
  // Queue é a estrutura ideal para filas (FIFO)
  final fila = Queue<Pessoa>();

  /// Adiciona uma pessoa ao final da fila
  void entrarNaFila(Pessoa pessoa) {
    fila.addLast(pessoa);

    print('${pessoa.nome} ${pessoa.sobrenome} entrou na fila');
  }

  /// Atende a primeira pessoa da fila
  Pessoa atender() {
    final pessoa = fila.removeFirst();

    print('${pessoa.nome} ${pessoa.sobrenome} foi atendido(a)');

    return pessoa;
  }
}