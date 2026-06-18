import 'dart:math';

void main() {
  // Cria o controlador da lista de compras
  final controle = Controle();

  // Cria alguns itens
  final pao = Item('Pao', 2);
  final leite = Item('Leite', 4);
  final arroz = Item('Arroz', 3);
  final refri = Item('Coca - Cola', 6);
  final feijao = Item('Feijão', 3);

  // Adiciona os itens na lista de desejados
  controle.adicionarItem(pao);
  controle.adicionarItem(leite);
  controle.adicionarItem(arroz);
  controle.adicionarItem(refri);
  controle.adicionarItem(feijao);

  // Marca alguns itens como comprados
  controle.marcarComoComprado(pao);
  controle.marcarComoComprado(leite);

  // Marca um item como sem estoque
  controle.marcarComoSemEstoque(arroz);

  // Mostra o progresso das compras
  controle.mostrarProgresso();

  // Lista os itens que ainda estão pendentes
  controle.listaItens();

  // Escolhe um item pendente aleatoriamente
  print('Item pendente: ${controle.escolherItemAleatorio().nome}');
}

// Classe que representa um item da lista de compras
class Item {
  Item(this.nome, this.quantidade);

  // Nome do item
  String nome;

  // Quantidade desejada
  int quantidade;
}

// Classe responsável por controlar a lista de compras
class Controle {

  // Itens que ainda precisam ser comprados
  final desejados = <Item>[];

  // Itens já comprados
  final comprados = <Item>[];

  // Itens que não tinham estoque
  final semEstoque = <Item>[];

  // Adiciona um item à lista de desejados
  void adicionarItem(Item item) {
    desejados.add(item);
  }

  // Exibe todos os itens pendentes
  void listaItens() {
    for (var item in desejados) {
      print('${item.nome} - ${item.quantidade}');
    }
  }

  // Move um item da lista de desejados para comprados
  void marcarComoComprado(Item item) {
    desejados.remove(item);
    comprados.add(item);
  }

  // Move um item da lista de desejados para sem estoque
  void marcarComoSemEstoque(Item item) {
    desejados.remove(item);
    semEstoque.add(item);
  }

  // Escolhe um item pendente aleatoriamente
  Item escolherItemAleatorio() {
    final random = Random();
    return desejados[random.nextInt(desejados.length)];
  }

  // Mostra o progresso das compras
  // Exemplo: 2/5 = 2 itens comprados de um total de 5
  void mostrarProgresso() {
    final total =
        desejados.length + comprados.length + semEstoque.length;

    print('Progresso: ${comprados.length}/$total');
  }
}