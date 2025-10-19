// Implemente um programa que crie os 3 tipos de animais definidos no exercícios anterior e invoque
// o método que emite o som de cada um de forma polimórfica, isto é, independente do tipo de animal.

import 'exerc_07.dart';

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome: Au Au!');
  }
}

class Cavalo extends Animal {
  Cavalo(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome: Ihhhiii!');
  }
}

class Preguica extends Animal {
  Preguica(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome: Zzzzz...');
  }
}

void main() {
  List<Animal> animais = [
    Cachorro('Caramelo', 5),
    Cavalo('Burro', 7),
    Preguica('Sid', 3),
  ];

  for (var animal in animais) {
    animal.emitirSom();
  }
}
