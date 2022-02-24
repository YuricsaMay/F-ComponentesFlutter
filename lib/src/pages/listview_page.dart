import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({ Key? key }) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scroll = new ScrollController();
  List<int> _listaNumeros=[1,2,3,4,5];
  int _ultimoElemento = 0;
  bool _Cargando = false;
      @override
  void initState() {
    super.initState();
    _agregar10();
    _scroll.addListener(() {
      if (_scroll.position.pixels == _scroll.position.maxScrollExtent) {
        //_agregar10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scroll.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text ('Listas'),
      ),
  body: Stack(
          children: [
            _crearLista(),
            _crearCargando(),
          ],
        ));
  }

  Widget _crearLista(){
    

      return RefreshIndicator(
      onRefresh:recargar,
      child: ListView.builder(
          controller: _scroll,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext contex, int index){

          final imagen= _listaNumeros[index];

          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?imagen=$index'),
            placeholder:AssetImage('assets/jar-loading.gif'),
            );
    
      }),
      );
  }
   Future <Null> recargar() async{
     await Future.delayed(const Duration(seconds: 2));
      _listaNumeros.clear();
      _ultimoElemento++;
      _agregar10();
  }
  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoElemento++;
      _listaNumeros.add(_ultimoElemento);
      setState(() {});
    }
  } 

  Future fetchData() async {
    if (_Cargando) return;
    _Cargando = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 2));
    _agregar10();
    _Cargando = false;
    setState(() {});

   if (_scroll.position.pixels + 100 <=
        _scroll.position.maxScrollExtent) return;

    _scroll.animateTo(_scroll.position.pixels + 100,
        duration: const Duration(milliseconds: 250),
        curve: Curves.fastOutSlowIn);

  }

  Widget _crearCargando() {
    if (_Cargando) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container(); 
    }
  }
}