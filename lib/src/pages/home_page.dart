import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      title:Text('Componentes'),
    ),
    body: _lista(),
    );
  }

  Widget _lista(){
return ListView(
  children: _listaItems(),
);

  }
  List<Widget> _listaItems(){
    return [
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo')),
    ];
  }
}