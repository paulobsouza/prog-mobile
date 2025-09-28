// Dada a lista a seguir:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// Escreva um programa que imprima todos os elementos da lista que são menores que 5.
void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  for (int number in a) {
    if (number < 5) {
      print(number);
    }
  }
}
