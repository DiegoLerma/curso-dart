import 'dart:async';

main() {
  final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen((data) => print('Despegando $data'),
      onDone: () => print('Mision completa'),
      onError: (err) => print('Error $err'),
      cancelOnError: false);

  streamController.stream.listen((data) => print('Saliendo $data'),
      onDone: () => print('Mision completaaa'),
      onError: (err) => print('Error 2 $err'),
      cancelOnError: false);

  streamController.sink.add('Apolo 11');
  streamController.sink.add('Apolo 12');
  streamController.sink.add('Apolo 13');
  streamController.sink.addError('Houston, tenemos un problema');
  streamController.sink.add('Apolo 14');
  streamController.sink.add('Apolo 15');

  streamController.sink.close();

  print('Fin del main');
}
