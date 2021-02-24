import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false, //remove bottom padding 
      resizeToAvoidBottomInset: true, 
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true
      ),  
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Numero de clicks!', style: estiloTexto),
            Text('0', style: estiloTexto),
          ],
        )
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed:() {
          print('hola');
        },
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
  }
}