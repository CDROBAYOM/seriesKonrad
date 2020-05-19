
import 'package:entrega3/Pages/categorias_page.dart';
import 'package:entrega3/Pages/tema.dart';
import 'package:entrega3/blocs/theme.dart';
import 'package:entrega3/pages/page.dart';
import 'package:entrega3/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:entrega3/Pages/aventura_page.dart';
import 'package:entrega3/Pages/categorias_page.dart';
import 'package:entrega3/Pages/ciencia_page.dart';
import 'package:entrega3/Pages/comedia_page.dart';
import 'package:entrega3/Pages/documentales_page.dart';
import 'package:entrega3/Pages/drama_page.dart';
import 'package:entrega3/Pages/terror_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return ChangeNotifierProvider(
          builder: (_) => ThemeChanger( ThemeData.light() ),
          child: MaterialAppWithTheme(),
      );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      theme: theme.getTheme(),
      home: CategoriasPage(),
      debugShowCheckedModeBanner: false,
        title: 'Series App',
        initialRoute: 'Inicio',        
        routes: {                    
          'CategoriasPage'       : ( BuildContext context ) => CategoriasPage(),
          'Drama'                : ( BuildContext context ) => DramaPage(),
          'Aventura'             : ( BuildContext context ) => AventuraPage(),
          'Documentales'         : ( BuildContext context ) => DocumentalesPage(),
          'Ciencia'              : ( BuildContext context ) => CienciaPage(),
          'Comedia'              : ( BuildContext context ) => ComediaPage(),
          'Terror'               : ( BuildContext context ) => TerrorPage(),          
          'Inicio'               : ( BuildContext context ) => Splash(),
          'Page'                 : ( BuildContext context ) => Page(),          
        }
    );
  }
}
