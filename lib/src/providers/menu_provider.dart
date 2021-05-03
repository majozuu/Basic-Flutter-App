import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

//Clase privada, porque se necesita solo una instancia de esto en la app
class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    //cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    //Regresa un future
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
