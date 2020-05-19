import 'package:entrega3/pages/categorias_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Series Konrad'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Originales'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: CategoriasPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Drama'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: CategoriasPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Comedia'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        alignment: Alignment.bottomCenter,
                        curve: Curves.bounceOut,
                        type: PageTransitionType.size,
                        child: CategoriasPage()));
              },
            ),
            RaisedButton(
              child: Text('Documentales'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.bounceOut,
                        type: PageTransitionType.rotate,
                        alignment: Alignment.topCenter,
                        child: CategoriasPage()));
              },
            ),
            RaisedButton(
              child: Text('Anime'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.linear,
                        type: PageTransitionType.scale,
                        alignment: Alignment.topCenter,
                        child: CategoriasPage()));
              },
            ),
            RaisedButton(
              child: Text('Drama'),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        curve: Curves.linear,
                        type: PageTransitionType.upToDown,
                        child: CategoriasPage()));
              },
            ),           
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String title;

  const SecondPage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args ?? "Page Transition Plugin"),
      ),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}