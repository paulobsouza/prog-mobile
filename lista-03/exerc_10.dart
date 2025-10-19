// Crie um zoologico, com 10 jaulas (utilize um array) coloque em cada jaula um animal diferente,
// percorra cada jaula e emita o som e, se o tipo de animal possuir comportamento, faça-o correr.

import 'exerc_07.dart';
import 'exerc_08.dart';

void main() {
  List<Animal> zoologico = [
    Cachorro('Rex', 4),
    Cavalo('Relâmpago', 6),
    Preguica('Lento', 2),
    Cachorro('Bolt', 3),
    Cavalo('Trovão', 5),
    Preguica('Sonolento', 4),
    Cachorro('Max', 2),
    Cavalo('Furacão', 7),
    Preguica('Preguiçoso', 1),
    Cachorro('Buddy', 5),
  ];

  for (var animal in zoologico) {
    animal.emitirSom();
    if (animal is Cachorro || animal is Cavalo) {
      print('${animal.nome} está correndo!');
    }
  }
}
