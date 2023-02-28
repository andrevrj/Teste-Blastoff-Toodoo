import 'dart:io';

void main() {
  double temperatura, temperaturaConvertida;
  String opcao;

  print("Digite uma temperatura: ");
  temperatura = double.parse(stdin.readLineSync()!);

  print("Escolha a opção de conversão: \n"
      "1. Celsius para Fahrenheit \n"
      "2. Fahrenheit para Celsius \n"
      "Opção: ");
  opcao = stdin.readLineSync()!;

  switch (opcao) {
    case '1':
      temperaturaConvertida = (temperatura * 9 / 5) + 32;
      print(
          "$temperatura °C equivalem a ${temperaturaConvertida.toStringAsFixed(2)} °F");
      break;
    case '2':
      temperaturaConvertida = (temperatura - 32) * 5 / 9;
      print(
          "$temperatura °F equivalem a ${temperaturaConvertida.toStringAsFixed(2)} °C");
      break;
    default:
      print("Opção inválida!");
  }
}
