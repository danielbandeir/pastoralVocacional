import 'package:flutter/material.dart';
import 'package:pastoravocacional/customColors/customColorLogin.dart';




mixin ScreensComponents{

  Widget campo(String nome, { var validator, Function function} ){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 48),
      color: customColorLogin.white,
      child: TextFormField(
        style: TextStyle(color: customColorLogin.mainColor),
        decoration: InputDecoration(
            hintText: nome,
            hintStyle: TextStyle(color: customColorLogin.mainColor, fontWeight: FontWeight.w400),
            border: OutlineInputBorder()
        ),
      ),
    );

  }

}