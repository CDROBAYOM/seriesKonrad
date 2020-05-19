import 'package:entrega3/pages/page.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new Page(),
      title: new Text('Series-K',textScaleFactor: 3,
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),
      ),
      image: new Image.network('https://res.cloudinary.com/dlrlog6ij/image/upload/v1589857196/exmt0guudzqigzttgxdb.jpg'),
      //backgroundGradient: new LinearGradient(colors: [Colors.cyan, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
      backgroundColor: Colors.white24,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 180.0,
      //onClick: ()=>Navigator.pushNamed(context, 'CategoriasPage')      
    );
  }
}
