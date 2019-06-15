import 'package:flutter/material.dart';
import 'package:pastoravocacional/customColors/customColorLogin.dart';
import 'screens_components.dart';
class LoginScreen extends StatelessWidget with ScreensComponents{
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: customColorLogin.mainColor,
      body: Center(
        child: ListView(
          shrinkWrap: true  ,
          children: <Widget>[
            Form(
              key: formKey,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //LOGO DO APP
                Container(
                  padding: EdgeInsets.only(bottom: 70),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: customColorLogin.white,
                    child: Text("Logo",
                      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: customColorLogin.mainColor) ,),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 25),
                  //TEXTFIELD DE LOGIN
                  child: campo("Login"),
                ),
                Container(
                  //TEXTFIELD DE SENHA
                  child: campo("Senha"),
                  padding: EdgeInsets.only(bottom: 50),
                ),
                //BOTÃO DE LOGIN
                botao()
              ],
            ),)
          ],
        ),
      )
      );
  }
}
