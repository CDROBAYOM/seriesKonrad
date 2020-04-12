import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Lista de Series';

    return MaterialApp(
      title: title,
      theme: ThemeData(
          primaryColor: Colors.redAccent,
        ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(                    
          crossAxisCount: 2,
          primary: false,
          childAspectRatio: 0.95,
          padding: EdgeInsets.all(10.0),
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,          
          children: List.generate(10, (index) {            
            return Card(                            
              child: Card(                                
                elevation: 10.0,                
                child: Column(
                  children: <Widget>[                                        
                    Image.network('https://res.cloudinary.com/dlrlog6ij/image/upload/v1586382080/yukiqh93a8yxkeafu56q.jpg'),
                    FlatButton(onPressed: (){                      
                      Navigator.pushNamed(context, 'serie');
                    }, child:Text('Ver Mas')),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
