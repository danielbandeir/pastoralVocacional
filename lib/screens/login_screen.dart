import 'package:flutter/material.dart';
import 'package:pastoravocacional/customColors/customColorLogin.dart';
import 'screens_components.dart';
class LoginScreen extends StatelessWidget with ScreensComponents{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColorLogin.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 70),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: customColorLogin.white,
              child: Text("Logo",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: customColorLogin.mainColor) ,),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: campo("Login"),
          ),
          campo("Senha")
        ],
      ),
    );
  }
}
