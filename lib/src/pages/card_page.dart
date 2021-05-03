import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
          ],
        ));
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 1.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text('Soy el titulo de la tarjeta'),
              subtitle: Text(
                  'Esta es la descripcion de la tarjeta que se desea mostrar para el ejemplo'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text('Cancelar'),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text('OK'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ));
  }

  Widget _cardTipo2() {
    final card = Container(
        child: Column(
      children: [
        FadeInImage(
          image: NetworkImage(
              'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
          placeholder: AssetImage('data/assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
        //Image(
        //  image: NetworkImage(
        //      'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
        //),
        Container(padding: EdgeInsets.all(10.0), child: Text('Texto'))
      ],
    ));
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                //Plano cartesiano invertido (para coordenadas de offset)
                offset: Offset(2.0, 10.0))
          ]),
    );
  }
}
