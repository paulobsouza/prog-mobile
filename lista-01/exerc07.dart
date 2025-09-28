// Faça um programa que encontre a diferença entre o quadrado da soma e a soma dos quadrados dos N primeiros números naturais.
// O quadrado da soma dos dez primeiros números naturais é (1 + 2 + ... + 10)2 = 552 = 3025.
// A soma dos quadrados dos dez primeiros números naturais é 12 + 22 + ... + 102 = 385.
// Portanto, a diferença entre o quadrado da soma dos dez primeiros números naturais e a soma dos quadrados dos dez primeiros números naturais é 3025 - 385 = 2640.

import 'dart:io';

void main() {
  print('Digite um número inteiro positivo N:');
  int? n;
  while (n == null) {
    String? inputN = stdin.readLineSync();
    if (inputN != null) {
      n = int.tryParse(inputN);
      if (n == null || n <= 0) {
        print('Por favor, digite um número inteiro positivo válido para N.');
        n = null;
      }
    }
  }

  int soma = 0;
  int somaDosQuadrados = 0;

  for (int i = 1; i <= n; i++) {
    soma += i;
    somaDosQuadrados += i * i;
  }

  int quadradoDaSoma = soma * soma;
  int diferencaDeQuadrados = quadradoDaSoma - somaDosQuadrados;

  print(
    'A diferença entre o quadrado da soma e a soma dos quadrados dos $n primeiros números naturais é: $diferencaDeQuadrados',
  );
}
