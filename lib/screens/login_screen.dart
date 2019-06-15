import 'package:flutter/material.dart';
import 'package:pastoravocacional/customColors/customColorLogin.dart';
class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColorLogin.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CircleAvatar(
            radius: 70,
            backgroundColor: customColorLogin.white,
            child: Text("Logo",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: customColorLogin.mainColor) ,),
          )
        ],
      ),
    );
  }
}
