void main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5];
  List<int> lista2;
  List<int> lista3 = [13, 1, 2, 15, -10];
  List<String> nombres = ['Tony', 'Peter'];

  print('Length: ${lista.length}');
  print('[]: ${lista[0]}');
  print('First: ${lista.first}');
  print('Last: ${lista.last}');
  print('Is empty: ${lista.isEmpty}');
  print('As map: ${lista.asMap()}');
  // Map nombreMapa = nombres.asMap();
  print('Index of: ${nombres.indexOf('Peter')}');
  int mayor3 = lista.indexWhere((numero) => (numero > 3));
  print('IndexWhere mayor a 3: ${mayor3}');
  print('Remove: ${nombres.remove('Tony')} \nR: ${nombres}');
  lista.shuffle();
  print('Shuffle: ${lista3}');

  lista3.sort();
  print('Sort: ${lista3}');
  print('Reverse: ${lista3.reversed.toList()}');

  nombres.forEach((nombre) {
    nombre = nombre.toUpperCase();
    print(nombre);
  });
  print('Listado: $nombres');

  final newList = nombres.map((nombre) => nombre.toUpperCase()).toList();
  print('Nuevo Listado: $newList');
}
