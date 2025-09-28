// Dada a lista a seguir:
// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Escreva um código que pegue esta lista e crie uma nova lista que contenha apenas os elementos pares dessa lista.

void main() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> pares = [];

  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      pares.add(a[i]);
    }
  }

  print('Elementos pares: $pares');
}
