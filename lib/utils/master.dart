import 'package:flutter/material.dart';
import 'package:series/pages/libros.dart';

class MasterDetailContainer extends StatefulWidget {
  @override
  _ItemMasterDetailContainerState createState() =>
      _ItemMasterDetailContainerState();
}

class _ItemMasterDetailContainerState extends State<MasterDetailContainer> {
  static const int kDualPanelBreakpoint = 600;

  Widget _buildSinglePanelLayout() {
    
  }

  Widget _buildDualPanelLayout() {     
    LibrosPage();     
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
  }
}
