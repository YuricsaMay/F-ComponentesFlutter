import 'package:flutter/material.dart';
class CardPage extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    appBar: AppBar(
      title:Text('Cards'),
    ),
    body:ListView(
      padding:EdgeInsets.all(10.0),
      children:<Widget>[
        _cardTipo1(),
      SizedBox(height: 30.0),
          _cardTipo2()

      ],
    ),
      );
  }

   Widget _cardTipo1(){
  return Card(
    child:Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color:Colors.blue),
          title:Text ('Soy el titulo de la tarjeta'),
          subtitle: Text('Esta es una descripcion cora de lo que trata o es esta tarjeta diseñada'),

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:<Widget>[
          TextButton(
         child:Text('Cancelar'),
          onPressed: (){},
          ),
          TextButton(
         child:Text('Ok'),
          onPressed: (){},
          
        )
      ],
      )
      ],
    ),
  );
  
}

   Widget _cardTipo2(){
     return Card(
       child:Column(
         children:<Widget> [

           FadeInImage(
             image:NetworkImage('https://www.photographytalk.com/images/articles/2018/05/01/articles/2017_8/landscape_photography_techniques.jpg'),
            placeholder:AssetImage('assets/jar-loading.gif'),
            fadeInDuration:Duration(milliseconds: 200),
            height: 300.0,
            fit:BoxFit.cover,
),

            Container(
              padding: EdgeInsets.all(10.0),
              child:Text('un landscape hermoso'),
            )
           
         ],
         )
     );
   }
}