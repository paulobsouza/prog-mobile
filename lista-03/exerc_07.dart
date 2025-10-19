// Crie uma hierarquia de classes conforme abaixo com os seguintes atributos e comportamentos
// utilize os seus conhecimentos e distribua as características de forma que tudo o
// que for comum a todos os animais fique na classe animal:

// Cachorro: Nome, Idade, EmitirSom, Correr
// Cavalo: Nome, Idade, EmitirSom, Correr
// Preguiça: Nome, Idade, EmitirSom, SubirEmArvore

abstract class Animal {
  String _nome;
  int _idade;

  Animal(this._nome, this._idade);

  String get nome => _nome;
  int get idade => _idade;

  set nome(String nome) => _nome = nome;
  set idade(int idade) => _idade = idade;

  void emitirSom();
}
