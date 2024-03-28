void main(List<String> args) {
  String nombre = 'Fernando';
  String apellido = 'Herrera';

  String nombreCompleto = '$nombre $apellido';

  print('Nombre Completo: $nombreCompleto');
  print('Length: ${nombreCompleto.length}');
  print('Contains: ${nombreCompleto.contains('a')}');
  print('Endswith: ${nombreCompleto.endsWith('a')}');
  print('PadLeft: ${nombreCompleto.padLeft(20, "...")}');
  print('Operador []: ${nombreCompleto[0]}');
  print('Operador *: ${nombreCompleto * 2}');
  print('ReplaceAll: ${nombreCompleto.replaceAll(r'e', 'a')}');
  print('SubString: ${nombreCompleto.substring(0, 5)}');
  print('IndexOf F: ${nombreCompleto.indexOf("F")}');
  print('Split: ${nombreCompleto.split(" ")}');
  print(
      'Capitalizar ultima: ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}
