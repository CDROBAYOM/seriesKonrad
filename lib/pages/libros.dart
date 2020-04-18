

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:series/pages/HtttpRequest.dart';


class Libros extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Biblioteca',      
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new LibrosPage(),
    );
  }
}

class LibrosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LibrosState();
}

class LibrosState extends State<LibrosPage> {
  
  List<Book> _list;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text("Series y Peliculas"),          
        ),
        body: _getBody());
  }

  Widget _getBody() {
    if (_list == null) {
      return CircularProgressIndicator();
    } else if (_list.length == 0) {
      return Center(
        child: Text("No hay datos"),
      );
    } else {
      return GridView.builder(
          itemCount: _list.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            final book = _list[index];
            return new BookWidget(book);
          });
    }
  }

  @override
  void initState() {
    super.initState();
    doRequest();
  }

  void doRequest() {
    getData().then((result) {
      setState(() {
        _list = result;
      });
    }).catchError((error) {
      print(error);
    });
  }
}

class BookWidget extends StatelessWidget {
  final Book book;
  
  BookWidget(this.book);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(2),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder:
                  (BuildContext context) => new BookShower(this)));
        },
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.network(book.cover),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.black12.withOpacity(0.5),
                height: 80,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        book.id,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        book.author,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          ),                        
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookShower extends StatelessWidget {
  final BookWidget bookWidget;  
  List<Book> _list;
  BookShower(this.bookWidget);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookWidget.book.title),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Card(
        child: Column(
          children: <Widget>[
            Text(
                bookWidget.book.title,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 2,                
                ),
            Image.network(bookWidget.book.cover),                                    
          ],
        ),
      ),        
      body: ListView.builder(
          itemCount: 10,          
          itemBuilder: (context, index) {            
            return ListTile(
              enabled: true,
              isThreeLine: true,
              selected: false,
              title: Text('Temporada',textScaleFactor: 1.5,),
              leading: Image.network(bookWidget.book.cover,scale: 1.0),
              subtitle: Text(bookWidget.book.title,textScaleFactor: 1,),              
            );            
          },          
        ),                         
    );
  }
}
