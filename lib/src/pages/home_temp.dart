import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //conss HomePageTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Componentes Temp'),
      ),
      body:ListView(
      children:<Widget>[
        ListTile(
          title:Text('ListTile Title'),
      ),
      Divider(),
       ListTile(
          title:Text('ListTile Title'),
      ),
      Divider(),
       ListTile(
         
          title:Text('ListTile Title'),
      ),
      ]
      ),
    );
  }
}