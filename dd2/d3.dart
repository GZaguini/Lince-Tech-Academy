void main (){
  // Cria uma biblioteca vazia
  final biblioteca = Biblioteca();

  // Adiciona músicas na biblioteca
  biblioteca.adicionarMusica(Musica("Billie Jean", "Michael Jackson", "Thriller", 294));
  biblioteca.adicionarMusica(Musica("Let It Be", "The Beatles", "Let It Be", 243));
  biblioteca.adicionarMusica(Musica("Ai Se Eu Te Pego", "Michel Telo", "Na Balada", 167));
  biblioteca.adicionarMusica(Musica("Surtada", "Luisa Sonza", "Pandora", 156));
  biblioteca.adicionarMusica(Musica("Deixa Acontecer", "Grupo Revelação", "Ao Vivo no Olimpo", 270));

  // Lista todas as músicas cadastradas
  biblioteca.listarMusicas();

  // Exibe a quantidade total de músicas
  print('Quantidade de músicas: ${biblioteca.quantidadeMusicas()}');

  // Exibe o tempo total da biblioteca em horas
  print('Tempo total: ${biblioteca.tempoTotalHoras().toStringAsFixed(2)} horas');

  // Busca música pelo título
  print('\nBusca por título:');
  print(biblioteca.buscarPorTitulo("Billie Jean"));

  // Busca músicas pelo artista
  print('\nBusca por artista:');
  print(biblioteca.buscarPorArtista("Michael Jackson"));

  // Busca músicas pelo álbum
  print('\nBusca por álbum:');
  print(biblioteca.buscarPorAlbum("Na Balada"));
}

// Classe que representa uma música
class Musica {

  Musica(this.titulo,this.artista,this.album,this.duracao);

  String titulo;
  String artista;
  String album;
  int duracao;

  // Define como a música será exibida ao usar print()
  @override
  String toString() {
    return '$titulo - $artista - $album - ${duracao}s';
  }
}

// Classe responsável por gerenciar as músicas
class Biblioteca {

  // Lista de músicas cadastradas
  final musicas = <Musica>[];

  // Exibe todas as músicas da biblioteca
  void listarMusicas() {
    for (var musica in musicas) {
      print('${musica.titulo} - ${musica.artista} - ${musica.album} - ${musica.duracao}s');
    }
  }

  // Retorna a quantidade de músicas cadastradas
  int quantidadeMusicas() {
    return musicas.length;
  }

  // Calcula o tempo total das músicas em horas
  double tempoTotalHoras() {
    var totalSegundos = 0;

    for (var musica in musicas) {
      totalSegundos += musica.duracao;
    }

    return totalSegundos / 3600;
  }

  // Busca músicas pelo título
  List<Musica> buscarPorTitulo(String titulo) {
    final resultado = <Musica>[];

    for (var musica in musicas) {
      if (musica.titulo == titulo) {
        resultado.add(musica);
      }
    }

    return resultado;
  }

  // Busca músicas pelo artista
  List<Musica> buscarPorArtista(String artista) {
    final resultado = <Musica>[];

    for (var musica in musicas) {
      if (musica.artista == artista) {
        resultado.add(musica);
      }
    }

    return resultado;
  }

  // Busca músicas pelo álbum
  List<Musica> buscarPorAlbum(String album) {
    final resultado = <Musica>[];

    for (var musica in musicas) {
      if (musica.album == album) {
        resultado.add(musica);
      }
    }

    return resultado;
  }

  // Adiciona uma nova música na biblioteca
  void adicionarMusica(Musica musica) {
    musicas.add(musica);
  }
}