//

import 'package:flutter/material.dart';

class SeriesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle de Series'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo2(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _listaCapitulos(context),
          SizedBox(height: 10.0),          
        ],
      ),
    );
  }

  Widget _cardTipo1() {    
    return Card(
      elevation: 10.0,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          Text(
            'Nombre de la Serie',
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
            textScaleFactor: 1.5,            
          ),
          Divider(),
          Text(
            'Genero: Comenia',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(),
          Text(
            'Autores: Pedro, Juan, Maria',
            style: TextStyle(fontWeight: FontWeight.bold),            
          ),
          Divider(),
          Text(            
            'Descripcion: Élite es una producción española para Netflix en la que su historia se desarrolla en Las Encinas, un colegio exclusivo del país. ... Un día, la ciudad sufre un gran terremoto que destruye el colegio público y los alumnos se ven obligados a ser repartidos por otras escuelas de la localidad.',
            textAlign: TextAlign.justify,
            maxLines: 10,
            softWrap: true,
            textScaleFactor: 1, 
          ),
          Divider(),          
        ],
      ),
    );
  }

  Widget _cardTipo2() {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          // Image(
          //   image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner')
          )
        ],
      ),
    );


    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );

  }

  Widget _listaCapitulos( BuildContext context ) {   
    return Card(
      elevation: 10.0,
        child: Column(          
          children: <Widget>[                      
           ListTile(
              leading: Icon(Icons.movie_filter),
              title: Text('Temporada 1'),
              selected: true,              
            ),
            Divider(  color: Colors.black),
            ListTile(
              leading: Icon(Icons.movie_filter),
              title: Text('Temporada 2'),
            ),
            Divider(  color: Colors.black),
            ListTile(
              leading: Icon(Icons.movie_filter),
              title: Text('Temporada 3'),
            ),
            Divider(  color: Colors.deepPurple),
            ListTile(
              leading: Icon(Icons.movie_filter),
              title: Text('Temporada 4'),
            ),
            Divider(  color: Colors.deepPurple),
            ListTile(
              leading: Icon(Icons.movie_filter),
              title: Text('Temporada 5'),
            ),
            Divider(  color: Colors.deepPurple),
            ListTile(
              leading: Icon(Icons.movie_filter),
              title: Text('Temporada 6'),
            ),
            Divider(  color: Colors.deepPurple),
            ListTile(
              leading: Icon(Icons.movie_filter),
              title: Text('Temporada 7'),
            ),
          ],
        ),
    );
  }
}