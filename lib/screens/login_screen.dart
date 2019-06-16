import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';
import 'package:pastoravocacional/blocs/login_bloc.dart';
import 'screens_components.dart';

class LoginScreen extends StatelessWidget with ScreensComponents {
  LoginBloc bloc;

  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.getBloc<LoginBloc>();
    bloc.context = context;

    return Scaffold(
        key: bloc.scaffoldKey,
        backgroundColor: customStyles.mainColor,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Form(
                key: bloc.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //LOGO DO APP
                    Container(
                      padding: EdgeInsets.only(bottom: 70),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: customStyles.white,
                        child: Text(
                          "Logo",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: customStyles.mainColor),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 25),
                      //TEXTFIELD DE LOGIN
                      child: campo(
                          "Login", bloc.validateEmail, bloc.emailController, false),
                    ),
                    Container(
                      //TEXTFIELD DE SENHA
                      child: campo("Senha", bloc.validatePassword,
                          bloc.passwordController, true),
                      padding: EdgeInsets.only(bottom: 50),
                    ),
                    //BOTÃO DE LOGIN
                    botao(bloc.submit, showSnackBar)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  showSnackBar(String error) {
    bloc.scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(error),
    ));
  }
}
