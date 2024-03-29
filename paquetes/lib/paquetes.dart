import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:paquetes/clases/pais.dart';
import 'package:paquetes/clases/reqres_respuesta.dart';

void getReqResService() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    if (res.statusCode == 200) {
      final resReqRes = reqResRespuestaFromJson(res.body);
      // // print(res);
      // final body = jsonDecode(res.body);
      // print('page: ${body['page']}');
      // print('per_page: ${body['per_page']}');
      // print('id del tercer elemento: ${body['data'][2]['id']}');
      print('page: ${resReqRes.page}');
      print('per_page: ${resReqRes.perPage}');
      print('id del tercer elemento: ${resReqRes.data[2].id}');
    } else {
      throw Exception('URL no valido. Por favor contacte al administrador');
    }
  }).catchError((error) {
    print('Se ha producido un error: $error');
    getReqResService();
  });
}

// Tarea
void getCountry() {
  stdout.writeln('Digite el pais que desea revisar. Ej: Mexico');
  String country = stdin.readLineSync() ?? 'mex';
  // String country = 'mex';
  country = country.trim().substring(0, 3).toLowerCase();

  final url = Uri.parse('https://restcountries.com/v2/alpha/$country');
  http.get(url).then((res) {
    if (res.statusCode == 200) {
      final resReqC = paisFromJson(res.body);
      print("""
===========================
Pais: ${resReqC.name}
Población: ${resReqC.population.toInt()}
Fronteras:
\t${resReqC.borders.reduce((total, border) => '$total\n\t$border').toString()}     
languages: ${resReqC.languages[0].name}
Latitud : ${resReqC.latlng[0]}
Longitud: ${resReqC.latlng[1]}
Moneda: ${resReqC.currencies[0].name}
Bandera: ${resReqC.flag}
===========================
""");
    } else {
      throw Exception(
          'Pais no encontrado. Por favor digite un pais valido, sin acentos');
    }
  }).catchError((error) {
    print('''Se ha producido un error:\n
    $error
    Intentelo nuevamente\n''');
    getCountry();
  });
}
