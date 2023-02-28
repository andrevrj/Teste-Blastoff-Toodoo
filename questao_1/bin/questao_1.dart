void main() {
  int numero, unidade, dezena, centena, unidadeMilhar;

  numero = 1834;

  unidade = numero % 10; //retorna o resto da divisão entre o número e 10
  numero ~/= 10;

  dezena = numero % 10;
  numero ~/= 10;

  centena = numero % 10;
  numero ~/= 10;

  unidadeMilhar = numero % 10;

  print("Unidade: $unidade");
  print("Dezena: $dezena");
  print("Centena: $centena");
  print("Unidade de milhar: $unidadeMilhar");
}
