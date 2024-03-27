import 'dart:io';

main() {
  stdout.writeln('¿Cuál es tu edad?');
  int edad = int.parse(stdin.readLineSync() ?? '0');

  // if (edad >= 18) {
  //   stdout.write('Eres mayor de edad');
  // } else {
  //   stdout.write('Eres menor de edad');
  // }

  if (edad >= 21) {
    stdout.write('Eres un ciudadano');
  } else if (edad >= 18) {
    stdout.write('Eres mayor de edad');
  } else {
    stdout.write('Eres menor de edad');
  }
}
