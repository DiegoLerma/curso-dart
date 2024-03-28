main() {
  Audio volumen = Audio.medio; //0=volumen bajo, 1=volumen medio, 2=volumen alto

  switch (volumen) {
    case Audio.bajo:
      print('Volumen bajo');
      break;
    case Audio.medio:
      print('Volumen medio');
      break;
    case Audio.alto:
      print('Volumen alto');
      break;
  }
}

enum Audio { bajo, medio, alto }
