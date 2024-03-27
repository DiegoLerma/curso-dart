main() {
  // Numeros
  int a = 10;
  double b = 5.5;
  int? c;

  int _a = 30;
  double $b = 40;

  double resultado = _a + $b;

  // print(resultado);

// String
  String nombre = 'Tony';
  String? nombre2 = "Tony";
  String nombre3 = "O'Connor";
  String apellido = 'Stark';
  String nombre_completo = '$nombre $apellido';

  String multilinea = '''
Holaaaaaaaaaaaaaaaaaaa
asfas
asdfa
asfa
O'Connor
$nombre2
''';
  // print(nombre_completo);

// Booleans
  bool isActive = true;
  bool isNotActive = !isActive;
  // print(isNotActive!); //El ! al final de una expresion significa que confiamos en que no obtendremos un valor nulo

// Listas

  // List<String> villanosDeprecated = new List(); //Forma antigua de trabajar con listas
  List<String> villanos = ['Lex Luthor', 'Red Skull', 'Doom'];
  // print(villanos[0]);
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');

  var villanosSet = villanos.toSet().toList();
  // print(villanosSet);

// Sets
// Un set no tiene duplicados
  Set<String> villanos2 = {'Lex Luthor', 'Red Skull', 'Doom'};
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  // print(villanos);
  // print(villanos2);

//Mapas
  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y dinero',
    'nivel': 9000
  };

  print(ironman['nivel']);
}
