// Implemente a classe Operario como subclasse da classe Empregado. Um determinado operário
// tem como atributos, para além dos atributos da classe Pessoa e da classe Empregado, o atributo
// valorProducao (que corresponde ao valor monetário dos artigos efetivamente produzidos pelo
// operário) e comissao (que corresponde à porcentagem do valorProducao que será adicionado ao
// vencimento base do operário). Note que deverá redefinir nesta subclasse o método herdado
// calcularSalario (o salário de um operário é equivalente ao salário de um empregado usual acrescido
// da referida comissão). Escreva um teste adequado para esta classe.

import 'exerc_03.dart';

class Operario extends Empregado {
  double _valorProducao;
  double _comissao;

  Operario(
    String nome,
    String endereco,
    String telefone,
    int codigoSetor,
    double salarioBase,
    double imposto,
    this._valorProducao,
    this._comissao,
  ) : super(nome, endereco, telefone, codigoSetor, salarioBase, imposto);

  double get valorProducao => _valorProducao;
  double get comissao => _comissao;

  set valorProducao(double valor) => _valorProducao = valor;
  set comissao(double comissao) => _comissao = comissao;

  @override
  double calcularSalario() {
    double salarioEmpregado = super.calcularSalario();
    double valorComissao = _valorProducao * (_comissao / 100);
    return salarioEmpregado + valorComissao;
  }
}

// Teste da classe Operario

void main() {
  Operario operario = Operario(
    'Carlos Pereira',
    'Avenida Central, 789',
    '98765-4321',
    102,
    2500.0,
    0.15,
    10000.0,
    5.0,
  );

  print('Salário do Operário: ${operario.calcularSalario()}');
}
