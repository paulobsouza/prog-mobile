// Considere, como subclasse da classe Pessoa, a classe Empregado. Considere que cada instância da
// classe Empregado tem, para além dos atributos que caracterizam a classe Pessoa, os atributos
// codigoSetor (inteiro), salarioBase (vencimento base) e imposto (porcentagem retida dos impostos).
// Implemente a classe Empregado com métodos seletores e modificadores e um método calcularSalario. Teste a classe Empregado.

import 'exerc_01.dart';

class Empregado extends Pessoa {
  int _codigoSetor;
  double _salarioBase;
  double _imposto;

  Empregado(
    String nome,
    String endereco,
    String telefone,
    this._codigoSetor,
    this._salarioBase,
    this._imposto,
  ) : super(nome, endereco, telefone);

  int get codigoSetor => _codigoSetor;
  double get salarioBase => _salarioBase;
  double get imposto => _imposto;

  set codigoSetor(int codigo) => _codigoSetor = codigo;
  set salarioBase(double salario) => _salarioBase = salario;
  set imposto(double imposto) => _imposto = imposto;

  double calcularSalario() {
    return _salarioBase - (_salarioBase * _imposto / 100);
  }
}

// Teste da classe Empregado

void main() {
  Empregado empregado = Empregado(
    'João da Silva',
    'Rua das Acácias, 123',
    '12345-6789',
    101,
    2000.0,
    15.0,
  );

  print('Salário do Empregado: ${empregado.calcularSalario()}');
}
