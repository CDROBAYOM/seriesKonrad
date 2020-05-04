
import 'package:flutter/material.dart';

class DramaPage extends StatelessWidget {
  
  static const int dualPanelBreakpoint = 600;

  @override
  Widget build(BuildContext context) {
    Widget content;
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (shortestSide < dualPanelBreakpoint) {
      content = _buildSinglePanelLayout();
    } else {
      content = _buildDualPanelLayout();
    }

    return Scaffold(      
      body: content,         
    );
  }

  Widget _buildSinglePanelLayout() {

      final List<String> entries = <String>['1', '2', '3', '4', '5', '6','7','8','9'];      
      return Scaffold(
      appBar: AppBar(
        title: Text('Drama'),        
        elevation: 20,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),        
        scrollDirection: Axis.vertical,        
        itemCount: entries.length,        
        itemBuilder: (BuildContext context, int index) {
          return Container(            
            height: 50,
            width: 50,
            color: Colors.white,
            child: Center(child: Text('Temporada ${entries[index]}')),            
          );          
        }
        )
      );           
  }

  Widget _buildDualPanelLayout() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: _buildSinglePanelLayout()
            ),
          ),
        Flexible(
          flex: 1,
          child: _cardTipo2(),
        ),
      ],
    );
  }


  Widget _cardTipo2() {

    final card = Container(      
      child: Column(
        children: <Widget>[
          Divider(),
          Divider(),
          Title(color: Colors.black, child: Text('ELITE')),          
          FadeInImage(
            image: NetworkImage('https://res.cloudinary.com/dlrlog6ij/image/upload/v1588471482/Drama.jpg'),            
            placeholder: AssetImage('assets/cargando1.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 200.0,
            fit: BoxFit.cover,            
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Las Encinas es el colegio más exclusivo de España, el lugar donde estudian los hijos de la élite y donde acaban de ser admitidos tres jóvenes de clase baja, procedentes de un colegio público en ruinas.')
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

}