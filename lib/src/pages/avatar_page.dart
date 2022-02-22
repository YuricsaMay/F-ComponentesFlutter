import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{
  @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title:Text('Avatar Page'),

      actions:<Widget>[

        Container(
          padding: EdgeInsets.all(5.0),
          child:CircleAvatar(
            backgroundImage: NetworkImage('https://i.pinimg.com/474x/f4/d6/7b/f4d67b5b7aba50670fc7b2faf6ab972b.jpg'),
           radius: 25.0,

            ),
        ),

        Container(
          margin:EdgeInsets.only(right: 10.0),
          child:CircleAvatar(
            child: Text('MM'),
            backgroundColor: Colors.purple,
            ),
        )
      ]
      ),
      body:Center(
        child: FadeInImage(
          image:NetworkImage('https://i.pinimg.com/236x/40/f8/94/40f89498b141963238dac2a70570ff88.jpg') ,
         placeholder: AssetImage('assets/jar-loading.gif'),
         fadeInDuration: Duration(milliseconds: 200),
          ),
          ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        
 },
      ),
  );
}
}