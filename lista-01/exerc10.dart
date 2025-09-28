// Faça um programa que dada uma fita de DNA, retorne seu complemento de RNA (por
// transcrição de RNA).
// As fitas de DNA e RNA são uma sequência de nucleotídeos.
// Os quatro nucleotídeos encontrados no DNA são adenina (A), citosina (C), guanina (G) e timina (T).
// Os quatro nucleotídeos encontrados no RNA são adenina (A), citosina (C), guanina (G) e uracila (U).
// Dada uma fita de DNA, sua fita de RNA transcrita é formada pela substituição de cada nucleotídeo por seu complemento:

// G -> C
// C -> G
// T -> A
// A -> U

import 'dart:io';

void main() {
  stdout.write('Digite a fita de DNA: ');
  String dna = stdin.readLineSync() ?? '';

  if (dna.isNotEmpty) {
    String rna = transcreverParaRNA(dna);
    print('A fita de RNA transcrita é: $rna');
  } else {
    print('Nenhuma fita de DNA foi inserida.');
  }
}

String transcreverParaRNA(String dna) {
  String rna = '';

  for (int i = 0; i < dna.length; i++) {
    String nucleotideo = dna[i];

    switch (nucleotideo) {
      case 'G':
        rna += 'C';
        break;
      case 'C':
        rna += 'G';
        break;
      case 'T':
        rna += 'A';
        break;
      case 'A':
        rna += 'U';
        break;
      default:
        print('Nucleotídeo inválido encontrado: $nucleotideo');
    }
  }

  return rna;
}
