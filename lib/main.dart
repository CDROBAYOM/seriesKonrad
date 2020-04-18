import 'package:flutter/material.dart';
import 'package:series/pages/libros.dart';
import 'package:series/utils/master.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(            
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'libros',
        routes: {                    
          'master'  : ( BuildContext context ) => MasterDetailContainer(),
          'libros'  : ( BuildContext context ) => Libros(),          
        },
        theme: ThemeData(
          primaryColor: Colors.redAccent,
        ),
      );
  }
}
