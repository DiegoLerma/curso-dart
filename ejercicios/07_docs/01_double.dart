void main(List<String> args) {
  double numero = -3.1416;
  double infinito = double.infinity;
  // print('Firma: ${numero.sign} :: $numero');
  // print('Finito: ${infinito.isFinite} :: $infinito');
  // print('abs: ${numero.abs()} :: $numero');
  print('ceil: ${numero.ceil()} :: $numero');
  print('floor: ${numero.floor()} :: $numero');
  print('ceilToDouble: ${numero.ceilToDouble()} :: $numero');
  print('round: ${numero.round()} :: $numero');
  print('clamp: ${numero.clamp(1, 3)} :: $numero');
}
