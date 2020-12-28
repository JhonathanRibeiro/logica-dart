import 'dart:io';

void main(List<String> arguments) {
  var idade = 0;
  validateAge();
  validateOlderAge(idade);
}
//Calculo do IMC
double calculateIMC(int peso, double altura) {
  return peso / (altura * altura).round();
}
//Validando maior idade
validateOlderAge(int idade) {
  print('Qual o seu peso?');
  var inpPeso = stdin.readLineSync();
  var peso = int.parse(inpPeso);
  //Recuperando a altura
  print('Qual a sua altura?');
  var inpAltura = stdin.readLineSync();
  var altura = double.parse(inpAltura);
  var resultIMC = calculateIMC(peso, altura);
  //Validando se o peso e idade estão no padrão ideal
  if (idade >= 14 && idade <= 17 && resultIMC <= 30) {
    print('Muito abaixo do peso ideal! Seu peso: ${resultIMC.round()}');
  } else {
    print('Está no peso ideal: PESO:${peso}');
  }
  print('Seu IMC é: ${resultIMC}');
}
//Verificando o ciclo de vida: Criança, Adolecente e Maior de idade
validateAge() {
  print('Qual a sua idade?');
  var input = stdin.readLineSync();
  var idade = int.parse(input);
  //Validação do ciclo de vida
  if (idade >= 18) {
    print('Você tem ${idade} anos e já é maior de idade');
  } else if (idade >= 14 && idade <= 17) {
    print('Você tem ${idade} anos e ainda é um adolecente');
  } else {
    print('Você tem ${idade} anos e é uma criança');
  }
  return idade;
}
