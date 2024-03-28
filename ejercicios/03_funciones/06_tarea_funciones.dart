/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
*/
import 'dart:io';

int id_counter = 1;

String ask_something(message) {
  stdout.writeln("\n$message");
  return stdin.readLineSync() ?? '';
}

Map<String, dynamic> createUser() {
  stdout.writeln('\n\n=========== Usuario $id_counter =============');

  String nombre = ask_something('¿Cúal es su nombre?');

  String edad = ask_something('¿Qué edad tienes?');

  String pais = ask_something('¿En qué país naciste?');

  final Map<String, dynamic> usuario = {
    'id': id_counter,
    'nombre': nombre,
    'edad': edad,
    'pais': pais,
  };
  id_counter++;
  return usuario;
}

Map<String, dynamic> evaluateUserSalary(
    Map<String, dynamic> usuario, double salario) {
  stdout.writeln('\n${usuario['nombre']}: Sin deducciones');

  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  return (usuario);
}

main() {
  Map<String, dynamic> usuario1 = createUser();
  stdout.write(evaluateUserSalary(usuario1, 1500));

  Map<String, dynamic> usuario2 = createUser();
  stdout.write(evaluateUserSalary(usuario2, 1800));
}
