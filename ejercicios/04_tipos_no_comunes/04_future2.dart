import 'dart:io';

main() {
  File file = new File(Directory.current.path + "/assets/personas.txt");

  Future<String> f = file.readAsString();
  // String f = file.readAsStringSync();

  // print(f);
  f.then(print);

  print('Fin del main');

  // print(Directory.current.path);
}
