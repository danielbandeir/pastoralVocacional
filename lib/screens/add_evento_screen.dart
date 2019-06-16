import 'package:flutter/material.dart';
import 'screens_components.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';

class AddEventoScreen extends StatelessWidget with ScreensComponents {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: customStyles.mainColor,
        body: Center(
            child: ListView(
          children: <Widget>[
            Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Adicionar Evento",
                        style:
                            TextStyle(fontSize: 30, color: customStyles.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 49),
                      child: Text(
                        "Preencha abaixo as informações individuais",
                        style: TextStyle(
                          fontSize: 16,
                          color: customStyles.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        "para adicionar o novo evento",
                        style: TextStyle(
                          fontSize: 16,
                          color: customStyles.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 45),
                      child: campo("Nome"),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: data(context),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 55),
                      child: menu(),
                    ),
                    botao("Adicionar")
                  ],
                ))
          ],
        )));
  }
}
