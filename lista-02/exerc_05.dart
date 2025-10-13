/// Crie uma função int multiplicar(int a, int b) e atribua essa função a uma variável chamada operacao.
/// Depois, use operacao(3, 4) para mostrar o resultado (12).

int multiplicar(int a, int b) {
  return a * b;
}

void main() {
  var operacao = multiplicar;
  print(operacao(3, 4));
}
