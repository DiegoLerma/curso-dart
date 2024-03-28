import 'dart:io';

/*
Dada la base de la tabla de multiplicar, imprimir la tabla de multiplicar del 1 al 10.
*/

tabla_multiplicar() {
  stdout.write('Ingrese un numero multiplicar: ');
  int base = int.parse(stdin.readLineSync() ?? '5');

  for (int i = 1; i <= 10; i++) {
    stdout.write('$base x $i = ${base * i}\n');
  }
  return null;
}

main() {
  // for (int i = 1; i <= 100; i++) {
  //   print("$i. Hola mundo!");
  // }
  tabla_multiplicar();
}
