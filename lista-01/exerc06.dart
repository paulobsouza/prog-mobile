// Faça um jogo de Pedra-Papel-Tesoura para dois jogadores, um usuário contra o computador (a escolha do computador deve ser randômica).

import 'dart:io';
import 'dart:math';

void main() {
  List<String> opcoes = ['pedra', 'papel', 'tesoura'];
  Random random = Random();

  print('Escolha: pedra, papel ou tesoura');
  String? escolhaUsuario = stdin.readLineSync();

  if (escolhaUsuario != null && opcoes.contains(escolhaUsuario)) {
    String escolhaComputador = opcoes[random.nextInt(opcoes.length)];
    print('Computador escolheu: $escolhaComputador');

    if (escolhaUsuario == escolhaComputador) {
      print('Empate!');
    } else if ((escolhaUsuario == 'pedra' && escolhaComputador == 'tesoura') ||
        (escolhaUsuario == 'papel' && escolhaComputador == 'pedra') ||
        (escolhaUsuario == 'tesoura' && escolhaComputador == 'papel')) {
      print('Você ganhou!');
    } else {
      print('Você perdeu!');
    }
  } else {
    print('Escolha inválida.');
  }
}
