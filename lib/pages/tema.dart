import 'package:entrega3/Pages/categorias_page.dart';
import 'package:entrega3/blocs/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TemaPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Aplicacion de Series')
          ),
          body: ListaBotones(),
          floatingActionButton: FloatingActionButton(
            child: Icon( Icons.access_time ),
            onPressed: () {
              Navigator.pushNamed(context, 'CategoriasPage');
            }),
    );
  }
}


class ListaBotones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: () => theme.setTheme( ThemeData.light() ), 
          child: Text('Ligth')
        ),
        FlatButton(
          onPressed: () => theme.setTheme( ThemeData.dark() ),  
          child: Text('Dark')),
        FlatButton(
          onPressed: () => Navigator.pushNamed(context, 'CategoriasPage'),  
          child: Text('Dark'))
      ],
    );
  }
}
