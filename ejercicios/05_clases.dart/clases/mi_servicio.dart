class MiServicio {
  // Constructor privado
  MiServicio._internal();

  //Instancia estatica privada
  static final MiServicio _singleton = new MiServicio._internal();

  // Metodo o Constructor Factory
  factory MiServicio() {
    return _singleton;
  }

  String url = 'https://google.com';
  String key = 'ABC123';
}
