import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //Lista de Widgets
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  //Metodo para regresar lista de Widgets
  // ignore: unused_element
  List<Widget> _crearItems() {
    //Definir lo que se va a retornar
    //Lista dinámica
    // ignore: deprecated_member_use
    List<Widget> lista = new List<Widget>();
    //Recorrer todas las opciones
    //tempWidget es ListTile con cada opción de la lista
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.access_alarm_outlined),
            trailing: Icon(Icons.arrow_drop_up_outlined),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
