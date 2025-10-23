import 'dart:io';
import 'cliente.dart';
import 'produto.dart';
import 'venda_item.dart';
import 'venda.dart';

void main() {
  print('=== SISTEMA DE VENDAS ===\n');

  print('--- DADOS DO CLIENTE ---');
  stdout.write('Nome do cliente: ');
  String nomeCliente = stdin.readLineSync() ?? '';

  stdout.write('CPF (somente números): ');
  int cpfCliente = int.parse(stdin.readLineSync() ?? '0');

  var cliente = Cliente(nome: nomeCliente, cpf: cpfCliente);

  List<Produto> produtos = [];
  List<VendaItem> itens = [];

  stdout.write('\nQuantos produtos deseja cadastrar? ');
  int qtdProdutos = int.parse(stdin.readLineSync() ?? '0');

  for (int i = 0; i < qtdProdutos; i++) {
    print('\n--- PRODUTO ${i + 1} ---');

    stdout.write('Código do produto: ');
    int codigo = int.parse(stdin.readLineSync() ?? '0');

    stdout.write('Nome do produto: ');
    String nome = stdin.readLineSync() ?? '';

    stdout.write('Preço: R\$ ');
    double preco = double.parse(stdin.readLineSync() ?? '0');

    stdout.write('Desconto (em %): ');
    double desconto = double.parse(stdin.readLineSync() ?? '0');

    var produto = Produto(
      codigo: codigo,
      nome: nome,
      preco: preco,
      desconto: desconto,
    );
    produtos.add(produto);

    stdout.write('Quantidade: ');
    int quantidade = int.parse(stdin.readLineSync() ?? '1');

    var item = VendaItem(produto: produto, quantidade: quantidade);
    itens.add(item);
  }

  var venda = Venda(cliente: cliente, itens: itens);

  print('\n');
  print(venda);
}
