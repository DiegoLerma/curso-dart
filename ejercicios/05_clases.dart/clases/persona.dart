class Persona {
  //Campos o propiedades
  String? nombre;
  int? edad;
  String? _bio = 'bio';

  //Gets y sets
  String? get bio => _bio?.toUpperCase();

  set bio(String? texto) => _bio = texto;

  //Constructores
  // Persona(int edad, String nombre) {
  //   this.edad = edad;
  //   this.nombre = nombre;
  // }
  Persona({this.edad, this.nombre = 'Maria'});

  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  Persona.persona40(String nombre) {
    this.edad = 40;
    this.nombre = nombre;
  }

  Persona.desconocido() {
    this.nombre = 'John Doe';
    this.edad = null;
    this._bio = 'Desconocido';
  }

  //Metodos
  @override
  String toString() => '$nombre, $edad, $_bio'; //super.toString();
}
