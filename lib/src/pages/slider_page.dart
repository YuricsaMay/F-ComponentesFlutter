import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider=100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Slider'),
      ),
      body:Container(
        padding:EdgeInsets.only(top:50.0),
        child:Column(
          children: <Widget>[
         _crearSlider(),
         Expanded(
        child: _crearImagen()),
          ],
          ),

      )
      
    );
  }
  Widget _crearSlider(){
return Slider(
  activeColor: Colors.indigoAccent,
  label:'Tamaño de la imagen',
  value: _valorSlider,
  min:10.0,
  max:400.0,
  onChanged: (valor){
    setState((){
    _valorSlider=valor;
    });
  },
);
  }
  Widget _crearImagen(){
return Image (
  image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNV9wzcgjtCq6rFSIdijl2nW6F3FaeZzoujQ&usqp=CAU'),
  width:_valorSlider,
  fit:BoxFit.contain,
);
  }
}