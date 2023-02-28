void main() {
  String nomeCompleto;

  print("Digite seu nome completo:");
  nomeCompleto = 'André Vieira Rocha Junior';

  String nomeMaiusculo =
      nomeCompleto.toUpperCase(); //deixando todo nome com letra maiuscula
  String nomeMinusculo =
      nomeCompleto.toLowerCase(); //deixando todo nome com letra minuscula

  int qtdLetras = nomeCompleto
      .replaceAll(" ", "")
      .length; //removendo os espaços em branco e contando quantas letras há no nome
  int qtdLetrasPrimeiroNome = nomeCompleto
      .split(" ")[0]
      .length; //delimitando pelo espaço em branco para contar quantas letras há no primeiro nome

  print("Nome com todas as letras maiúsculas: $nomeMaiusculo");
  print("Nome com todas as letras minúsculas: $nomeMinusculo");
  print("Quantidade de letras ao todo (sem considerar espaços): $qtdLetras");
  print("Quantidade de letras no primeiro nome: $qtdLetrasPrimeiroNome");
}
