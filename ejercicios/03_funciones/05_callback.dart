main() {
  obtenerUsuario('100', (Map persona) {
    print(persona);
  });
}

void obtenerUsuario(String id, Function callback) {
  Map usuario = {'id': id, 'nombre': 'Juan Carlos'};

  callback(usuario);
}

// void operacionLargaDuracion(String mensaje, Function callback) {
//   // Simula una operación que toma tiempo, como una solicitud de red
//   Future.delayed(Duration(seconds: 2), () {
//     callback(mensaje);
//   });
// }

// void main() {
//   print('Inicio de la operación');
//   operacionLargaDuracion('Operación completada', (resultado) {
//     print(resultado); // Se ejecuta después de la operación larga
//   });
//   print('Otra operación');
// }
