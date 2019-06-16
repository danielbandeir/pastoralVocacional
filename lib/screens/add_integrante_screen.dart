import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';
import 'screens_components.dart';

class AddIntegranteScreen extends StatelessWidget with ScreensComponents {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();

    return Scaffold(
        backgroundColor: customStyles.mainColor,
        body: Center(
          child: ListView(
            children: <Widget>[
              Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "Adicionar Integrante",
                          style: TextStyle(
                              fontSize: 30, color: customStyles.white),
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
                          "para adicionar o novo integrante",
                          style: TextStyle(
                            fontSize: 16,
                            color: customStyles.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 45, bottom: 15),
                        child: campo("Nome", null, null, null),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: campo("Nome do Pai", null, null, null),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: campo("Nome da Mãe", null, null, null),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: data(context, hint: "Data de Nascimento"),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: campo("Cidade", null, null, null),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 55),
                        child: campo("Estado", null, null, null),
                      ),
                      Container(
                        child: botao("Adicionar", null, null),
                        margin: EdgeInsets.only(bottom: 80),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
