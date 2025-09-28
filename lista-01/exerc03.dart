// Crie um programa que solicite um número ao usuário e imprima uma lista de todos os divisores desse número.
import 'dart:io';

void main() {
  print('Digite um número:');
  int? numero = int.tryParse(stdin.readLineSync() ?? '');

  if (numero != null) {
    print('Divisores de $numero:');
    for (int i = 1; i <= numero; i++) {
      if (numero % i == 0) {
        print(i);
      }
    }
  } else {
    print('Por favor, digite um número válido.');
  }
}
