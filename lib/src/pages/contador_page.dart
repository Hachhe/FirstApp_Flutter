import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);
  @override
   _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{
 
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context){
    return Container(
      margin:  const EdgeInsets.all(40.0), 
      child: Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true
      ),  
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Numero de clicks!', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      )
    );
  }

    Widget _crearBotones() {
        return
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget> [

            FloatingActionButton( 
              child: Icon( Icons.add) , onPressed:() {
              setState(() {
              _conteo++;
              });
              }),
              
              FloatingActionButton( 
              child: Icon( Icons.remove) , onPressed:() {
              setState(() {
              _conteo--;
              });
              }),
              
              FloatingActionButton( 
              child: Icon( Icons.settings_backup_restore) , onPressed:() {
              setState(() {
              _conteo = 0 ;
              });
              }),
          ],
        );
    }
} 

            