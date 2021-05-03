import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        //Lista de Widgets
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.yellow,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.pitchfork.com/photos/5c1c472819f63059050d200d/4:3/w_524,h_393,c_limit/Very-Spidey-Christmas.png'),
              radius: 30.0,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('data/assets/jar-loading.gif'),
          image: NetworkImage(
              'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/45/458b01d346d77dfead033fcec5b7b25115ff04c0_full.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
