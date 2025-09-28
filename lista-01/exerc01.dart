// Crie um programa que peça para o usuário digitar seu nome e sua idade. Salve essas informações
// em duas variáveis e imprima no console "Olá nomeDaPessoa, você tem idadeDaPessoa anos.".
// Além disso, calcular o ano que a pessoa nasceu e imprima "Você nasceu em anoDeNascimento.".
// Utilize um laço de repetição para imprimir no console:

// "No ano de 2000 você nasceu!
// No ano de 2001 você tinha 1 ano.
// No ano de 2002 você tinha 2 anos.
// ...
// No ano de 2025 você tem 20 anos."

// Além disso, calcule quantos anos restam para essa pessoa completar 100 anos, imprima isso no console.

import 'dart:io';

void main() {
  print('Digite seu nome:');
  String? nome = stdin.readLineSync();

  print('Digite sua idade:');
  int? idade;
  while (idade == null) {
    String? inputIdade = stdin.readLineSync();
    if (inputIdade != null) {
      idade = int.tryParse(inputIdade);
      if (idade == null) {
        print('Por favor, digite um número válido para a idade.');
      }
    }
  }

  print('Olá $nome, você tem $idade anos.');

  int anoAtual = 2025;
  int anoDeNascimento = anoAtual - idade;

  for (int ano = anoDeNascimento; ano <= anoAtual; ano++) {
    int idadeNoAno = ano - anoDeNascimento;
    if (idadeNoAno == 0) {
      print('No ano de $ano você nasceu!');
    } else if (idadeNoAno != idade) {
      print('No ano de $ano você tinha $idadeNoAno anos.');
    } else {
      print('No ano de $ano você tem $idadeNoAno anos.');
    }
  }

  int anosParaCem = 100 - idade;
  if (anosParaCem > 0) {
    print('Faltam $anosParaCem anos para você completar 100 anos.');
  } else {
    print('Você já completou 100 anos ou mais!');
  }
}

