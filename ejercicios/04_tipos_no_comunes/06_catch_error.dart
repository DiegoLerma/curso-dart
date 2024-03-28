main() {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      throw 'Auxilio, se fue a la verga todo';
    }
    return 'Retorno del future';
  });

  // timeout.then(print);

  timeout.then(print).catchError((print));

  print('Fin del main');
}
