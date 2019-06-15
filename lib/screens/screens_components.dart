import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';




mixin ScreensComponents{

  //TEXTFIELDS DO LOGIN
  Widget campo(String nome, { var validator, Function function} ){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 48),
      height: 49,
      color: customStyles.white,
      child: TextFormField(
        style: TextStyle(color: customStyles.mainColor, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
            hintText: nome,
            hintStyle: TextStyle(height: -1,fontSize: 17, color: customStyles.mainColor, fontWeight: FontWeight.w400),
            border: OutlineInputBorder()
        ),
      ),
    );

  }

  //BOTÃO DO LOGIN
  Widget botao(){
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 49,
        margin: EdgeInsets.symmetric(horizontal: 49),
        color: customStyles.white,
        child: Text("Login", style: TextStyle(fontSize: 17, color: customStyles.mainColor, fontWeight: FontWeight.w600),)
      ),
      onTap: (){},
    );
  }

}