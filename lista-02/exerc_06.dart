/// Raindrops é uma versão um pouco mais complexa do desafio FizzBuzz, uma pergunta clássica de entrevista.
/// Sua tarefa é converter um número em seus sons de gotas de chuva correspondentes.

/// Se um determinado número:
/// é divisível por 3, adicione "Pling" ao resultado.
/// é divisível por 5, adicione "Plang" ao resultado.
/// é divisível por 7, adicione "Plong" ao resultado.
/// não for divisível por 3, 5 ou 7, o resultado deve ser o número como uma string.

String convert(int number) {
  final buffer = StringBuffer();

  if (number % 3 == 0) {
    buffer.write('Pling');
  }
  if (number % 5 == 0) {
    buffer.write('Plang');
  }
  if (number % 7 == 0) {
    buffer.write('Plong');
  }

  return buffer.isEmpty ? number.toString() : buffer.toString();
}
