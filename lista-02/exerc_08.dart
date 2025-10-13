import 'dart:collection';

int calcularPontosDeEnergia(int nivel, List<int> valoresBaseItens) {
  final Set<int> multiplosUnicos = HashSet<int>();

  for (final int valorBase in valoresBaseItens) {
    if (valorBase <= 0) {
      continue;
    }
    for (int multiplo = valorBase; multiplo < nivel; multiplo += valorBase) {
      multiplosUnicos.add(multiplo);
    }
  }

  if (multiplosUnicos.isEmpty) {
    return 0;
  }

  int somaTotal = multiplosUnicos.reduce((valor, elemento) => valor + elemento);

  return somaTotal;
}

void main() {
  int nivelJogador1 = 20;
  List<int> itensJogador1 = [3, 5];

  int pontosJogador1 = calcularPontosDeEnergia(nivelJogador1, itensJogador1);

  print('--- Cenário 1 ---');
  print('Jogador completou o Nível: $nivelJogador1');
  print('Itens encontrados: $itensJogador1');
  print('Cálculo dos pontos:');
  print('  - Múltiplos de 3 (< 20): {3, 6, 9, 12, 15, 18}');
  print('  - Múltiplos de 5 (< 20): {5, 10, 15}');
  print('  - Múltiplos únicos combinados: {3, 5, 6, 9, 10, 12, 15, 18}');
  print('  - Soma total: 78');
  print('Resultado: O jogador ganhou $pontosJogador1 pontos de energia.');

  print('\n' + ('-' * 20) + '\n');

  int nivelJogador2 = 30;
  List<int> itensJogador2 = [4, 6, 8];

  int pontosJogador2 = calcularPontosDeEnergia(nivelJogador2, itensJogador2);

  print('--- Cenário 2 ---');
  print('Jogador completou o Nível: $nivelJogador2');
  print('Itens encontrados: $itensJogador2');
  print('Resultado: O jogador ganhou $pontosJogador2 pontos de energia.');
}
