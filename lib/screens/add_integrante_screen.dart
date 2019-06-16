import 'package:flutter/material.dart';
import 'screens_components.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';



class AddIntegranteScreen extends StatelessWidget with ScreensComponents{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: customStyles.mainColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical:15),
              child: Text("Adicionar Evento", style: TextStyle(fontSize: 35, color: customStyles.white),),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text("Preencha abaixo as informações individuais",
                style: TextStyle(fontSize: 16, color: customStyles.white, ),
                textAlign: TextAlign.center,

              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Text("para adicionar o novo integrante",
                style: TextStyle(fontSize: 16, color: customStyles.white, ),
                textAlign: TextAlign.center,

              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 45),
              child: campo("Nome"),
            ),
            data(context)


          ],


        ),
      )
    );
  }
}
