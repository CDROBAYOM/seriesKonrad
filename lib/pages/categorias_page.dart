import 'package:entrega3/blocs/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CategoriasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Series'),      
      ),
      body: ListView(
        padding: EdgeInsets.all(6.6),
        children: <Widget>[
          //_cambioTema(),
          SizedBox(height: 30.0),
          _cardTipo2(context,'Drama','v1588471482'),          
          SizedBox(height: 30.0),
           _cardTipo2(context,'Aventura','v1588471482'),
          SizedBox(height: 30.0),
           _cardTipo2(context,'Documentales','v1588471481'),
          SizedBox(height: 30.0),
           _cardTipo2(context,'Ciencia','v1588471481'),
          SizedBox(height: 30.0),
           _cardTipo2(context,'Comedia','v1588471481'),
          SizedBox(height: 30.0),
           _cardTipo2(context,'Terror','v1588471481'),
          SizedBox(height: 30.0),                 
        ],
      ),
      floatingActionButton: FloatingActionButton(
            child: Icon( Icons.wallpaper ),
            onPressed: () => theme.setTheme( ThemeData( 
                brightness: Brightness.light,
                primaryColor: Colors.purple
             )) 
      ),      
    );
  }

  Widget _cardTipo2(BuildContext context,  String direccionamiento, String uri) {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://res.cloudinary.com/dlrlog6ij/image/upload/'+uri+'/'+direccionamiento+'.jpg'),            
            placeholder: AssetImage('assets/cargando2.gif'),            
            fadeInDuration: Duration( milliseconds: 100 ),
            height: 300.0,
            fit: BoxFit.cover,            
          ),
          ListTile(
              title: Text(
                direccionamiento,
                textAlign: TextAlign.center,                                
                ),              
              onTap: () => Navigator.pushNamed(context, direccionamiento)
            ),
        ],
      ),
    );


    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
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
