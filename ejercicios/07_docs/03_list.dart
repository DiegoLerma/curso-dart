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
}
