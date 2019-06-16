import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';
import 'package:intl/intl.dart';

mixin ScreensComponents {
  //TEXTFIELDS DO LOGIN
  Widget campo(String nome, Function(String) validator, TextEditingController controller, bool obscuredText) {
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
            hintStyle: TextStyle(
                height: -1,
                fontSize: 17,
                color: customStyles.mainColor,
                fontWeight: FontWeight.w400),
            border: OutlineInputBorder()),
      ),
    );
  }

  //BOTÃO DO LOGIN
  Widget botao(String title, Function(Function(String)) submit, Function(String) callBack){
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 49,
        margin: EdgeInsets.symmetric(horizontal: 49),
        color: customStyles.white,
        child: Text(title, style: TextStyle(fontSize: 17, color: customStyles.mainColor, fontWeight: FontWeight.w600),)
      ),
      onTap: () => submit(callBack),
    );
  }

  //TEXTFIELD DE DATA
  Widget data(BuildContext context, {String hint = null }) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 48),
        height: 49,
        color: customStyles.white,
        alignment: Alignment.centerLeft,
        child: InkWell(
            onTap: () => _selectDate(context),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                    hint == null ? DateFormat.yMMMMd("pt_BR").format(DateTime.now()).toString() : hint,
                    style: TextStyle(
                      fontSize: 17,
                      color: customStyles.mainColor,
                      fontWeight: FontWeight.w400,
                    )),
              )
            ));
  }

  //DATEPICKER
  Future _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2016),
      lastDate: DateTime(2029),
      locale: Locale("pt"),
    );
  }

  //DROPDOWNMENU
  Widget menu() {
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
            hint: Padding(
                padding: null,
                child: Text("Tipo de Evento",
                    style: TextStyle(
                      fontSize: 17,
                      color: customStyles.mainColor,
                    )),
            ),
            value: dropdownValue,
            onChanged: (String v) {
              dropdownValue = v;
            },
            style: TextStyle(
              fontSize: 17,
              color: customStyles.mainColor,
            ),
            items: <String>[
              "Semana de Convivência",
              "Encontro Vocacional"
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                child: Text(value,
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: 17, color: customStyles.mainColor)),),
              );
            }).toList(),
          )),
    );
  }
}
