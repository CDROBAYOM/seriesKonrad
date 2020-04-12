import 'package:flutter/material.dart';

class PruebasPage extends StatelessWidget {

  _getSizes() {
  }

  _getPositions(){
  }

  @override
  Widget build(BuildContext context) {

    return new Container(
    constraints: new BoxConstraints.expand(
    height: 200.0,
    ),
    padding: new EdgeInsets.only(left: 0.0, bottom: 8.0, right: 16.0),
    decoration: new BoxDecoration(
    color: Colors.blue,
    ),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: [
        Text(
          '0.00',
          style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.bold

          ),
        ),
        Text(
          'Current Balance',
          style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
              fontWeight: FontWeight.bold
          ),
        ),
      new Card(
        child: new Column(
          children: <Widget>[
            new Image.network('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
            new Padding(
                padding: new EdgeInsets.all(7.0),
                child: new Row(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Icon(Icons.thumb_up),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Text('Like',style: new TextStyle(fontSize: 18.0),),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Icon(Icons.comment),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Text('Comments',style: new TextStyle(fontSize: 18.0)),
                    )

                  ],
                )
            )
          ],
        ),
      )
      ],
    )

    );
  }

}