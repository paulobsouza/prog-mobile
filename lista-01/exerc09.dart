// Scrabble é um jogo de palavras em que os jogadores colocam peças com letras em um tabuleiro
// para formar palavras. Cada letra tem um valor. A pontuação de uma palavra é a soma dos valores
// de suas letras. Sua tarefa é calcular a pontuação de uma palavra fornecida pelo usuário de acordo
// com o Scrabble, somando os valores de suas letras.

// As letras são avaliadas da seguinte forma:
// A, E, I, O, U, L, N, S, T, R - 1 ponto
// D, G - 2 pontos
// B, C, M, P - 3 pontos
// F, H, V, W, Y - 4 pontos
// K - 5 pontos
// J, X - 8 pontos
// Q, Z - 10 pontos

import 'dart:io';

void main() {
  // Mapa de valores das letras
  final Map<String, int> letterValues = {
    'A': 1,
    'E': 1,
    'I': 1,
    'O': 1,
    'U': 1,
    'L': 1,
    'N': 1,
    'S': 1,
    'T': 1,
    'R': 1,
    'D': 2,
    'G': 2,
    'B': 3,
    'C': 3,
    'M': 3,
    'P': 3,
    'F': 4,
    'H': 4,
    'V': 4,
    'W': 4,
    'Y': 4,
    'K': 5,
    'J': 8,
    'X': 8,
    'Q': 10,
    'Z': 10,
  };

  stdout.write('Digite uma palavra: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    String word = input.toUpperCase();
    int score = 0;

    for (int i = 0; i < word.length; i++) {
      String letter = word[i];
      if (letterValues.containsKey(letter)) {
        score += letterValues[letter]!;
      }
    }

    print('A pontuação da palavra "$word" é: $score');
  } else {
    print('Nenhuma palavra foi inserida.');
  }
}
