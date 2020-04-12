import 'package:flutter/material.dart';
import 'package:series/pages/lista_page.dart';
import 'package:series/pages/pruebas.dart';
import 'package:series/pages/seriesList_page.dart';
import 'package:series/pages/series_page.dart';
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
        initialRoute: 'master',
        routes: {
          'serie'   : ( BuildContext context ) => SeriePage(),
          'lista'   : ( BuildContext context ) => ListaPage(),
          'series2' : ( BuildContext context ) => SeriesPage(),          
          'pruebas' : ( BuildContext context ) => PruebasPage(),          
          'master'  : ( BuildContext context ) => MasterDetailContainer(),          
        },
        theme: ThemeData(
          primaryColor: Colors.redAccent,
        ),
      );
  }
}
