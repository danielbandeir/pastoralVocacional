import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';
import 'package:intl/intl.dart';




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
  Widget botao(String nome){
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 49,
        margin: EdgeInsets.symmetric(horizontal: 49),
        color: customStyles.white,
        child: Text(nome, style: TextStyle(fontSize: 17, color: customStyles.mainColor, fontWeight: FontWeight.w600),)
      ),
      onTap: (){},
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

  Widget menu(){
    String dropdownValue;
    return Center(
      child: Container(
          padding: EdgeInsets.only(top: 11),
          margin: EdgeInsets.symmetric(horizontal: 49),
          height: 49,
          color: customStyles.white,
          child: DropdownButton<String>(
            isExpanded: true,
            isDense: true,
            hint: Text("   Tipo de Evento", style: TextStyle(fontSize: 17, color: customStyles.mainColor, )),
            value: dropdownValue,
            onChanged: (String v){
              dropdownValue = v;
            },
            style: TextStyle(fontSize: 17, color: customStyles.mainColor, ),
            items: <String>["   Semana de Convivência", "   Encontro Vocacional"]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, textAlign: TextAlign.center ,style: TextStyle(fontSize: 17, color: customStyles.mainColor)),
              );
            }).toList(),
          )

      ),
    );
  }



}