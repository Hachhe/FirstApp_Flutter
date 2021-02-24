import 'package:flutter/material.dart';
//import 'package:myapp/src/pages/contador_page.dart';
import 'package:myapp/src/pages/home_pages.dart';


class MyApp extends StatelessWidget { 

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false, 
    home: Center( 
        child: HomePage(),
        //child: ContadorPage(),
        ),
  );
}
}


