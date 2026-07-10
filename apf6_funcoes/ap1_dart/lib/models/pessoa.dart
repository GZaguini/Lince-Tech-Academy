// Enum contendo todos os tipos sanguíneos disponíveis.
enum TipoSanguineo {
  aPositivo,
  aNegativo,
  bPositivo,
  bNegativo,
  oPositivo,
  oNegativo,
  abPositivo,
  abNegativo,
}

// Classe responsável por representar uma pessoa cadastrada.
class Pessoa {
  // Dados da pessoa.
  final String nome;
  final String email;
  final String telefone;
  final String github;
  final TipoSanguineo tipoSanguineo;

  // Construtor da classe Pessoa.
  const Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
    required this.github,
    required this.tipoSanguineo,
  });

  // Sobrescreve o operador de igualdade para comparar
  // duas pessoas pelos seus atributos.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa &&
        other.nome == nome &&
        other.email == email &&
        other.telefone == telefone &&
        other.github == github &&
        other.tipoSanguineo == tipoSanguineo;
  }

  // Gera um código hash baseado nos atributos da pessoa.
  // Necessário para que o operador == funcione corretamente.
  @override
  int get hashCode {
    return Object.hash(nome, email, telefone, github, tipoSanguineo);
  }
}

// Converte o enum do tipo sanguíneo para um formato
// mais amigável para exibição na interface.
String nomeTipoSanguineo(TipoSanguineo tipo) {
  switch (tipo) {
    case TipoSanguineo.aPositivo:
      return 'A+';

    case TipoSanguineo.aNegativo:
      return 'A-';

    case TipoSanguineo.bPositivo:
      return 'B+';

    case TipoSanguineo.bNegativo:
      return 'B-';

    case TipoSanguineo.oPositivo:
      return 'O+';

    case TipoSanguineo.oNegativo:
      return 'O-';

    case TipoSanguineo.abPositivo:
      return 'AB+';

    case TipoSanguineo.abNegativo:
      return 'AB-';
  }
}
