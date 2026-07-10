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

class Pessoa {
  final String nome;
  final String email;
  final String telefone;
  final String github;
  final TipoSanguineo tipoSanguineo;

  const Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
    required this.github,
    required this.tipoSanguineo,
  });

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

  @override
  int get hashCode {
    return Object.hash(nome, email, telefone, github, tipoSanguineo);
  }
}

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
