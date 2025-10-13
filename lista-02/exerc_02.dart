/// Crie uma função chamada media que receba uma lista de números e utilize a função soma (da
/// questão 1) para calcular a soma dos números da lista. A função media deve retornar a média dos números.

int soma(int a, int b) {
  return a + b;
}

double media(List<int> numeros) {
  int somaTotal = 0;
  for (int n in numeros) {
    somaTotal = soma(somaTotal, n);
  }
  return somaTotal / numeros.length;
}
