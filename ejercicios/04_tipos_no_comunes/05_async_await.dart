import 'dart:io';

main() async {
  String PATH = Directory.current.path + "/assets/personas.txt";
  String texto = await leerArchivo(PATH);
  print(texto);
  print('Fin del main');
}

Future<String> leerArchivo(String path) async {
  File file = new File(path);
  return file.readAsString();
}
