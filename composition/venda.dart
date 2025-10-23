import 'cliente.dart';
import 'venda_item.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({required this.cliente, this.itens = const []});

  double get valorTotal {
    double total = 0;
    for (var item in itens) {
      total += item.preco * item.quantidade;
    }
    return total;
  }

  @override
  String toString() {
    StringBuffer resumo = StringBuffer();
    resumo.writeln('=== RESUMO DA VENDA ===');
    resumo.writeln('Cliente: ${cliente.nome}');
    resumo.writeln('CPF: ${cliente.cpf}');
    resumo.writeln('\nItens:');

    for (var item in itens) {
      resumo.writeln(
        '  - ${item.produto.nome} x${item.quantidade} = R\$ ${(item.preco * item.quantidade).toStringAsFixed(2)}',
      );
    }

    resumo.writeln('\nValor Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    return resumo.toString();
  }
}
