// Implemente uma classe Veterinario que contenha um método examinar() cujo parâmetro de
// entrada é um Animal, quando o animal for examinado ele deve emitir um som, passe os 3 animais como parâmetro.

import 'exerc_07.dart';
import 'exerc_08.dart';

class Veterinario {
  void examinar(Animal animal) {
    print('Examinando ${animal.nome}...');
    animal.emitirSom();
  }
}

void main() {
  Veterinario veterinario = Veterinario();

  Cachorro cachorro = Cachorro('Caramelo', 5);
  Cavalo cavalo = Cavalo('Burro', 7);
  Preguica preguica = Preguica('Sid', 3);

  veterinario.examinar(cachorro);
  veterinario.examinar(cavalo);
  veterinario.examinar(preguica);
}
