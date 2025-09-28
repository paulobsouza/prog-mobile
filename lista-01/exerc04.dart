// Dada as listas a seguir:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
// Escreva um programa que retorne uma lista que contenha apenas os elementos que são comuns
// entre eles (sem duplicatas). Certifique-se de que seu programa funcione em duas listas de tamanhos diferentes.

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> comuns = [];

  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j] && !comuns.contains(a[i])) {
        comuns.add(a[i]);
      }
    }
  }

  print('Elementos comuns: $comuns');
}
