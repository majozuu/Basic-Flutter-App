import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom(
              primary: Colors.purple, shape: StadiumBorder()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        //Propiedad necesaria
        context: context,
        //Salir o no de la alerta aplastando fuera de ella
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            //Personalizacion de la forma
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            //En el contenido puede haber cualquier cosa
            content: Column(
              //Se adapta al contenido interno
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la caja de la alerta'),
                //Crear un logo
                FlutterLogo(size: 100.0)
              ],
            ),
            //Aqui ponemos botones con funcionalidades
            actions: [
              // ignore: deprecated_member_use
              FlatButton(onPressed: () {}, child: Text('Ok')),
              // ignore: deprecated_member_use
              FlatButton(
                  //Salir del dialogo de alerta
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
            ],
          );
        });
  }
}
