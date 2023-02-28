import 'dart:io';

void main() {
  // leitura dos comprimentos das retas
  print("Digite o comprimento da reta a:");
  double a = double.parse(stdin
      .readLineSync()!); //armazenando na variavel 'a' e convertendo a string lida na entrada em um valor numérico do tipo double

  print("Digite o comprimento da reta b:");
  double b = double.parse(stdin.readLineSync()!);

  print("Digite o comprimento da reta c:");
  double c = double.parse(stdin.readLineSync()!);

  // verificação das condições de existência de um triângulo
  if ((b - c).abs() < a &&
      a < b + c &&
      (a - c).abs() < b &&
      b < a + c &&
      (a - b).abs() < c &&
      c < a + b) {
    print("As retas formam um triângulo.");
  } else {
    print("As retas não formam um triângulo.");
  }
}
