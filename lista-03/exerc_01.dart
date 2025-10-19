// Crie uma Classe Pessoa, contendo os atributos encapsulados, com seus respectivos seletores(getters) e modificadores (setters),
// e ainda o construtor padrão e pelo menos mais duas opções de construtores conforme sua percepção.
// Atributos: String nome, String endereço, String telefone.

class Pessoa {
  String _nome;
  String _endereco;
  String _telefone;

  Pessoa(this._nome, this._endereco, this._telefone);

  Pessoa.nome(this._nome) : _endereco = '', _telefone = '';

  Pessoa.completo(this._nome, this._endereco, this._telefone);

  String get nome => _nome;
  String get endereco => _endereco;
  String get telefone => _telefone;

  set nome(String nome) => _nome = nome;
  set endereco(String endereco) => _endereco = endereco;
  set telefone(String telefone) => _telefone = telefone;
}
