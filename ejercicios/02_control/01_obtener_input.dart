import 'dart:io';

main() {
  stdout.writeln('¿Cuál es tu nombre?');

  // Leer informacion
  String? nombre = stdin.readLineSync(); // ?? 'No hay valor';

  print("\nSu nombres es $nombre");
}
