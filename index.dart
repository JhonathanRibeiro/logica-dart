class Animal {
  String tipo;
  String cor;
  int idade;
  //Construtor: parametros nomeados
  Animal({
    this.cor,
    this.idade,
    this.tipo
  });
  //metodo dormir: example
  dormir() {
    print('O animal ${tipo} está dormindo');
  }
}

void main(List<String> args) {
  Animal animal = new Animal(
    tipo: 'Gato',
    cor: 'Branco',
    idade: 10
  );

  print(
    'Tipo animal: ${animal.tipo}\n'
    'Cor: ${animal.cor}\n'
    'Idade: ${animal.idade}');
}
