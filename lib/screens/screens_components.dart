import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';
import 'package:intl/intl.dart';




mixin ScreensComponents{

  //TEXTFIELDS DO LOGIN
  Widget campo(String nome, Function(String) validator, TextEditingController controller, bool obscuredText ){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 48),
      color: customStyles.white,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscuredText,
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
  Widget botao(Function(Function(String)) submit, Function(String) callBack){
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 49,
        margin: EdgeInsets.symmetric(horizontal: 49),
        color: customStyles.white,
        child: Text("Login", style: TextStyle(fontSize: 17, color: customStyles.mainColor, fontWeight: FontWeight.w600),)
      ),
      onTap: () => submit(callBack),
    );
  }

  Widget data(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 48),
      height: 49,
      color: customStyles.white,
      child: InkWell(
          onTap: ()=> _selectDate(context),
          child: AbsorbPointer(
            child: TextField(
              decoration: InputDecoration(
                  hintText: DateFormat.yMMMMd("pt_BR").format(DateTime.now()).toString(),
                  hintStyle: TextStyle(height: -1,fontSize: 17, color: customStyles.mainColor, fontWeight: FontWeight.w400),
                  border: OutlineInputBorder()
              ),
            ),
          )
      )

    );

  }


  Future _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2016),
        lastDate:  DateTime(2029),
        locale: Locale("pt"),
    );
  }



}