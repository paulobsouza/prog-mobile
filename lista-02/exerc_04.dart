/// Crie uma função chamada maximo_minimo que receba uma lista de números e retorne o valor
/// máximo e o valor mínimo da lista. Por exemplo, para a lista [4, 7, 2, 8, 10, 3], a função deve
/// retornar [10, 2].

List<int> maximo_minimo(List<int> numeros) {
  int maximo = numeros[0];
  int minimo = numeros[0];
  for (int n in numeros) {
    if (n > maximo) {
      maximo = n;
    }
    if (n < minimo) {
      minimo = n;
    }
  }
  return [maximo, minimo];
}
