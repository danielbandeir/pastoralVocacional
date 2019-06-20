import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';

class EVEventosScreen extends StatefulWidget {
  @override
  _EVEventosScreenState createState() => _EVEventosScreenState();
}

class _EVEventosScreenState extends State<EVEventosScreen> {
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