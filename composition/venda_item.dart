import 'produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;
  double _preco;

  VendaItem({required this.produto, this.quantidade = 1})
    : _preco = produto.precoComDesconto;

  double get preco => _preco;

  set preco(double valor) {
    if (valor > 0) {
      _preco = valor;
    }
  }
}
