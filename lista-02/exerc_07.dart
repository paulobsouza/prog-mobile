const double segundosEmAnoTerrestre = 31557600;

final Map<String, double> periodosOrbitais = {
  'mercurio': 0.2408467,
  'venus': 0.61519726,
  'terra': 1.0,
  'marte': 1.8808158,
  'jupiter': 11.862615,
  'saturno': 29.447498,
  'urano': 84.016846,
  'netuno': 164.79132,
};

double calcularIdadeEmPlaneta(int segundos, String planeta) {
  String planetaNormalizado = planeta.toLowerCase();

  if (!periodosOrbitais.containsKey(planetaNormalizado)) {
    throw ArgumentError('Planeta inválido: $planeta');
  }

  double idadeAnosTerrestres = segundos / segundosEmAnoTerrestre;
  double periodoOrbital = periodosOrbitais[planetaNormalizado]!;
  double idadeNoPlaneta = idadeAnosTerrestres / periodoOrbital;

  return idadeNoPlaneta;
}

void main() {
  int idadeEmSegundos = 1000000000;
  print('Uma pessoa com $idadeEmSegundos segundos de idade teria:');

  for (String planeta in periodosOrbitais.keys) {
    double idadeCalculada = calcularIdadeEmPlaneta(idadeEmSegundos, planeta);
    print(
      '- ${idadeCalculada.toStringAsFixed(2)} anos em ${planeta.substring(0, 1).toUpperCase() + planeta.substring(1)}',
    );
  }

  print('\n---------------------------------\n');

  int idadeViajanteSegundos = (50 * segundosEmAnoTerrestre).round();
  String planetaAtual = 'Mercúrio';
  double idadeEmMercurio = calcularIdadeEmPlaneta(
    idadeViajanteSegundos,
    planetaAtual,
  );

  print('Cálculo para o agente da alfândega:');
  print(
    'Sua idade de 50 anos terrestres equivale a ${idadeEmMercurio.toStringAsFixed(2)} anos mercurianos!',
  );
}
