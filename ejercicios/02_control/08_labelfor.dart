main() {
  outerLoop:
  for (int i = 0; i < 5; i++) {
    innerLoop:
    for (int j = 0; j < 5; j++) {
      print('Valor de i: $i, Valor de j: $j');
      if (j == 2) {
        break outerLoop;
      }
    }
  }
}
