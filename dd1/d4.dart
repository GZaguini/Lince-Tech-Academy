void main() {

  // Define a data inicial utilizada no cálculo
  DateTime data = DateTime(2022, 09, 05);

  // Guarda a data original para exibir no final
  DateTime dataAtual = data;

  // Contador de dias úteis
  var contador = 0;

  // Continua executando enquanto não completar 18 dias úteis
  while (contador < 18) {

    // Avança a data em 1 dia
    data = data.add(Duration(days: 1));

    // Verifica se o dia não é sábado (6) nem domingo (7)
    if (data.weekday != 6 && data.weekday != 7) {

      // Se for um dia útil, incrementa o contador
      contador++;
    }
  }

  // Exibe a data inicial
  print(
    "Data atual: ${dataAtual.day}/${dataAtual.month}/${dataAtual.year}",
  );
  // Exibe a data após adicionar os 18 dias úteis
  print(
    "Data calculada: ${data.day}/${data.month}/${data.year}",
  );

}