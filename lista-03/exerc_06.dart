// Implemente a classe Vendedor como subclasse da classe Empregado. Um determinado vendedor
// tem como atributos, para além dos atributos da classe Pessoa e da classe Empregado, o atributo
// valorVendas (correspondente ao valor monetário dos artigos vendidos) e o atributo comissao
// (porcentagem do valorVendas que será adicionado ao vencimento base do Vendedor).
// Note que deverá redefinir nesta subclasse o método herdado calcularSalario (o salário de um vendedor é
// equivalente ao salário de um empregado usual acrescido da referida comissão). Escreva um teste adequado para esta classe.

import 'exerc_03.dart';

class Vendedor extends Empregado {
  double _valorVendas;
  double _comissao;

  Vendedor(
    String nome,
    String endereco,
    String telefone,
    int codigoSetor,
    double salarioBase,
    double imposto,
    this._valorVendas,
    this._comissao,
  ) : super(nome, endereco, telefone, codigoSetor, salarioBase, imposto);

  double get valorVendas => _valorVendas;
  double get comissao => _comissao;

  set valorVendas(double valor) => _valorVendas = valor;
  set comissao(double comissao) => _comissao = comissao;

  @override
  double calcularSalario() {
    double salarioEmpregado = super.calcularSalario();
    double valorComissao = _valorVendas * (_comissao / 100);
    return salarioEmpregado + valorComissao;
  }
}

// Teste da classe Vendedor

void main() {
  Vendedor vendedor = Vendedor(
    'Maria Oliveira',
    'Rua das Palmeiras, 456',
    '98765-4321',
    102,
    2500.0,
    10.0,
    15000.0,
    5.0,
  );

  print('Salário do Vendedor: ${vendedor.calcularSalario()}');
}
