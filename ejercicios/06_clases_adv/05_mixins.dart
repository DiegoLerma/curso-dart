mixin Logger {
  // Los mixins estan hechos para heredar sus propiedades y metodos
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

mixin Logger2 {
  // Los mixins estan hechos para heredar sus propiedades y metodos
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

abstract class Astro with Logger {
  String? nombre;

  Astro() {
    imprimir('--Init del astro--');
  }

  void existo() {
    imprimir('Soy un ser celestial y existo');
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  String? nombre;
  Asteroide(this.nombre) {
    imprimir('Hi, soy $nombre');
    imprimir2('Soy logger 2 xd');
  }
}

void main(List<String> args) {
  final ceres = new Asteroide('Ceres');
}
