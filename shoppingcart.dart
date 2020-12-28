import 'dart:io';

main() {
  List<String> products = [];
  bool condicao = true;
  while (condicao) {
    //aguarda o usuário informar um novo produto...
    print('Adicione um produto');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      print('** Sessão encerrada **');
      condicao = false;
      //imprime na tela os produtos caso o valor recebido
      //for igual a 'imprimir'
    } else if (text == 'imprimir') {
      imprimir();
    } else if (text == 'deletar') {
      delete();
    } else {
      //adicionando o valor recebido do input ao array products
      products.add(text);
      //limpando o terminal a cada nova sessão
      print('\x1B[2J\x1B[0;0H');
    }
  } //while
} //main

imprimir() {
  print('Qual item deseja remover?');
  for (var i = 0; i < products.length; i++) {
    print('Item $i - ${products[i]}');
  }
}

delete() {
  imprimir();
  int item = int.parse(stdin.readLineSync());
  products.removeAt(item); //removendo o produto informado pelo usuário
  print('Item $item removido');
}