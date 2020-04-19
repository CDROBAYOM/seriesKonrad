

import 'package:flutter/material.dart';

import 'package:series/pages/libros%20movil.dart';
import 'package:series/pages/libros.dart';

class MasterDetailContainer extends StatefulWidget {
  @override
  _ItemMasterDetailContainerState createState() =>
      _ItemMasterDetailContainerState();
}

class _ItemMasterDetailContainerState extends State<MasterDetailContainer> {
  static const int kDualPanelBreakpoint = 600;

  void _buildSinglePanelLayout() {
    Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LibrosMovilPage()),
            );
          },
        ),
      ),
    );
  }

  void _buildDualPanelLayout() {     
      Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LibrosPage()),
            );
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
   
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    if (shortestSide < kDualPanelBreakpoint) {
       _buildSinglePanelLayout();
    } else {
       _buildDualPanelLayout();
    }    
  }
}
