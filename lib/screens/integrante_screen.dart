import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';

//Screen for persons
class IntegranteScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //dontHavePerson if don't have persons yet in database
      body: dontHavePerson(context),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  //This widget is called when you have persons to return in integrate person
  Widget havePerson(BuildContext context){
    return Center();
  }

  //This widget is called when you don't have persons in you database to return,
  //and need to add some new person
  Widget dontHavePerson(BuildContext context){
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          //Text with padding to bottom for help text do add person
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Center(
              child: Text('Adicione um Integrante', style: TextStyle(color: customStyles.mainColor, fontSize: 24, fontWeight: FontWeight.w700),),
            ),
          ),
          //This is a helper to add a new person to database
          Padding(
            padding: EdgeInsets.only(bottom:25),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width/2+30,
                child: Text(
                    'Clique no botão para registrar um novo integrante',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: customStyles.mainColor),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}