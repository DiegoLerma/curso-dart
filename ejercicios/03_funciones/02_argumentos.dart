void saludar(String? mensaje, [String nombre = 'tu', int edad = 25]) {
  print('$mensaje, $nombre de $edad anios');
}

void saludar2(String? mensaje, {required String nombre, int veces = 10}) {
  print('$mensaje, $nombre');
}

main(List<String> args) {
  saludar('Hola', 'Diego');
  saludar2('Saludos', veces: 20, nombre: 'Tony');
}
