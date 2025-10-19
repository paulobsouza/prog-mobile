// Considere, como subclasse da classe Pessoa (desenvolvida no exercício anterior) a classe Fornecedor.
// Considere que cada instância da classe Fornecedor tem, para além dos atributos que caracterizam a
// classe Pessoa, os atributos valorCredito (correspondente ao crédito máximo atribuído ao fornecedor) e
// valorDivida (montante da dívida para com o fornecedor).
// Implemente na classe Fornecedor, para além dos usuais métodos seletores e modificadores, um
// método obterSaldo() que devolve a diferença entre os valores dos atributos valorCredito e valorDivida.
// Depois de implementada a classe Fornecedor, crie um programa de teste adequado (main()) que
// lhe permita verificar o funcionamento dos métodos implementados na classe Fornecedor e os herdados da classe Pessoa.

import 'exerc_01.dart';

class Fornecedor extends Pessoa {
  double _valorCredito;
  double _valorDivida;

  Fornecedor(
    String nome,
    String endereco,
    String telefone,
    this._valorCredito,
    this._valorDivida,
  ) : super(nome, endereco, telefone);

  double get valorCredito => _valorCredito;
  double get valorDivida => _valorDivida;

  set valorCredito(double valor) => _valorCredito = valor;
  set valorDivida(double valor) => _valorDivida = valor;

  double obterSaldo() {
    return _valorCredito - _valorDivida;
  }
}

// Teste da classe Fornecedor

void main() {
  Fornecedor fornecedor = Fornecedor(
    'Empresa Zetech',
    'Rua das Flores, 123',
    '12345-6789',
    10000.0,
    3500.0,
  );

  print('Saldo do Fornecedor: ${fornecedor.obterSaldo()}');
}
