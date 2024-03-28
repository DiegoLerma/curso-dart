main() {
  List<String> listado = [
    'Batman',
    'Superman',
    'Mujer Maravilla',
    'Flash',
    'Aquaman'
  ];

  // for (int i = 0; i < listado.length; i++) {
  //   // print(listado[i]);
  // }

  for (String nombre in listado) {
    print(nombre);
  }
}
