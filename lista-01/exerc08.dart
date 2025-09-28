// Bob é um adolescente indiferente. Na conversa, suas respostas são muito limitadas.
// Bob responde "Ok". se você fizer uma pergunta, como "Como você está?".
// Ele responde 'Uau, relaxe!' se você GRITAR COM ELE (todas as letras maiúsculas).
// Ele responde 'Calma, eu sei o que estou fazendo!' se você gritar com uma pergunta para ele (ponto de interrogação "?" no fim da frase).
// Ele diz 'Tudo bem. Seja desse jeito!' se você se dirigir a ele sem realmente dizer nada (pergunta vazia "").
// Ele responde 'Tanto faz'. a qualquer outra coisa.
// Faça um programa que represente a comunicação com Bob.

import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();

    if (input == null) continue;

    if (input.isEmpty) {
      print('Tudo bem. Seja desse jeito!');
    } else if (input == input.toUpperCase()) {
      if (input.endsWith('?')) {
        print('Calma, eu sei o que estou fazendo!');
      } else {
        print('Uau, relaxe!');
      }
    } else if (input.endsWith('?')) {
      print('Ok.');
    } else {
      print('Tanto faz.');
    }
  }
}

