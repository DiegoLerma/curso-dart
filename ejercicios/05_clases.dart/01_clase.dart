import 'clases/persona.dart';

main() {
  final persona = new Persona(edad: 33, nombre: 'Fernando');
  final persona2 = new Persona.persona40('Maria');
  final desconocido = new Persona.desconocido();

  // persona
  //   ..nombre = 'Fernando'
  //   ..edad = 33;
  // persona.bio = 'Cambie el valor';

  print(desconocido);
}
