import 'package:flutter/material.dart';

class MasterDetailContainer extends StatefulWidget {
  @override
  _ItemMasterDetailContainerState createState() =>
      _ItemMasterDetailContainerState();
}

class _ItemMasterDetailContainerState extends State<MasterDetailContainer> {
  static const int kDualPanelBreakpoint = 600;

  Widget _buildSinglePanelLayout() {
    return MaterialApp(      
      theme: ThemeData(
          primaryColor: Colors.redAccent,
        ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Series'),
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

  Widget _buildDualPanelLayout() {          
    return MaterialApp(      
      theme: ThemeData(
          primaryColor: Colors.redAccent,
        ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Series'),
        ),
        body: GridView.count(                    
          crossAxisCount: 2,
          primary: false,
          childAspectRatio: 1.2,
          padding: EdgeInsets.all(30.0),
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,          
          children: List.generate(30, (index) {            
            return Card(                                          
              child: Card(
                color: Colors.black,                           
                elevation: 30.0,                
                child: Column(
                  children: <Widget>[                                        
                    Container(
                      child: Text('Categoria',textScaleFactor: 2,style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.white70
                    ),
                    Divider( color: Colors.deepPurple),
                    Image.network('https://res.cloudinary.com/dlrlog6ij/image/upload/v1586653071/y7b8rzyyflqbznyaa1ml.jpg'),
                    RaisedButton(onPressed: (){                                            
                      Navigator.pushNamed(context, 'serie2');
                    }, child:Text(
                      'Ver Mas',
                      textScaleFactor: 2,                      
                      ),color: Colors.red,elevation: 30.0),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    if (shortestSide < kDualPanelBreakpoint) {
      content = _buildSinglePanelLayout();
    } else {
      content = _buildDualPanelLayout();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación de ejemplo'),
      ),
      body: content,
    );
  }
}
