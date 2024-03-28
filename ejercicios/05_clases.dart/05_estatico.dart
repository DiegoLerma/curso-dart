class Herramienta {
  static const List<String> listado = [
    'Martillo',
    'Llave inglesa',
    'Desarmador'
  ];

  static imprimirListado() => listado.forEach(print);
}

main() {
  // final herramienta = new Herramienta();
  // Herramienta.listado.add('Tenazas');
  // Herramienta.listado.forEach(print);
  Herramienta.imprimirListado();
}
