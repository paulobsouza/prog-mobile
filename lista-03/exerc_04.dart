// Implemente a classe Administrador como subclasse da classe Empregado. Um determinado
// administrador tem como atributos, para além dos atributos da classe Pessoa e da classe Empregado,
// o atributo ajudaDeCusto (ajudas referentes a viagens, estadias, ...).
// Note que deverá redefinir na classe Administrador o método herdado calcularSalario (o salário de um administrador é
// equivalente ao salário de um empregado usual acrescido das ajuda de custo). Escreva um teste adequado para esta classe.

import 'exerc_03.dart';

class Administrador extends Empregado {
  double _ajudaDeCusto;

  Administrador(
    String nome,
    String endereco,
    String telefone,
    int codigoSetor,
    double salarioBase,
    double imposto,
    this._ajudaDeCusto,
  ) : super(nome, endereco, telefone, codigoSetor, salarioBase, imposto);

  double get ajudaDeCusto => _ajudaDeCusto;

  set ajudaDeCusto(double ajuda) => _ajudaDeCusto = ajuda;

  @override
  double calcularSalario() {
    return super.calcularSalario() + _ajudaDeCusto;
  }
}

// Teste da classe Administrador
void main() {
  Administrador admin = Administrador(
    'Adalberto Silva',
    'Rua Tabelião Facundo, 456',
    '98765-4321',
    101,
    3000.0,
    0.2,
    500.0,
  );

  print('Salário do Administrador: ${admin.calcularSalario()}');
}
