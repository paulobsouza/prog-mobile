/// Implemente uma função chamada desconto que receba um preço e um percentual de desconto.
/// A função deve retornar o preço com o desconto aplicado. Caso o percentual de desconto não seja
/// fornecido, utilize o valor padrão de 10%.

double desconto(double preco, [double percentual = 10]) {
  return preco - (preco * percentual / 100);
}
