import 'package:flutter/material.dart';
import 'package:pastoravocacional/customColors/customColorLogin.dart';




mixin ScreensComponents{

  Widget campo(String nome, { var validator, Function function} ){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 48),
      height: 49,
      color: customColorLogin.white,
      child: TextFormField(
        style: TextStyle(color: customColorLogin.mainColor, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
            hintText: nome,
            hintStyle: TextStyle(height: -1,fontSize: 17, color: customColorLogin.mainColor, fontWeight: FontWeight.w400),
            border: OutlineInputBorder()
        ),
      ),
    );

  }

  Widget botao(){
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 49,
        margin: EdgeInsets.symmetric(horizontal: 49),
        color: customColorLogin.white,
        child: Text("Login", style: TextStyle(fontSize: 17, color: customColorLogin.mainColor, fontWeight: FontWeight.w600),)
      )
    );
  }

}