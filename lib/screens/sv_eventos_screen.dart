import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';

class SVEventosScreen extends StatefulWidget {
  @override
  _SVEventosScreenState createState() => _SVEventosScreenState();
}

class _SVEventosScreenState extends State<SVEventosScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: customStyles.mainColor,
        elevation: 0.0,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}