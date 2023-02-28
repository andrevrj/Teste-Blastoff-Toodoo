import 'dart:io';

void main() {
  List<String> utensilios = [
    'Conjunto de panelas',
    'Panela de pressão',
    'Frigideira antiaderente',
    'Descanso de panelas',
    'Faqueiro',
    'Tábua de corte de carnes (madeira ou vidro)',
    'Conjunto de medidores',
    'Fouet',
    'Saca rolhas',
    'Abridor de latas e garrafas',
    'Tesoura',
    'Ralador',
    'Funil',
    'Leiteira',
    'Coador de café',
    'Chaleira',
    'Escorredor de macarrão'
  ];

  print('Lista de utensílios de cozinha:');
  utensilios.forEach((item) => print(item));

  print('\nDigite um item para filtrar a lista:');
  String filtro = stdin.readLineSync()!;
  List<String> listaFiltrada =
      utensilios.where((item) => item.contains(filtro)).toList();
  listaFiltrada.sort();

  print('\nItens encontrados:');
  listaFiltrada.forEach((item) => print(item));
}
