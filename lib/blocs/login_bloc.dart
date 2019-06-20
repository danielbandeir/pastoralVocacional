import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/widgets.dart';
import 'package:pastoravocacional/blocs/login_validators.dart';
import 'package:pastoravocacional/repositories/auth_respository.dart';
import 'package:flutter/material.dart';

class LoginBloc extends BlocBase with LoginValidators {
  final AuthRepository authRepository;
  BuildContext context;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginBloc(this.authRepository){
    isLoggedIn().then((logged){
      if(logged) goToHomeScreen();
    });
  }

  void submit(Function(String) callBackError) async {
    try {
      if (!formKey.currentState.validate()) throw ("Erro");
      await authRepository.signIn(
          emailController.text, passwordController.text);
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    } catch (e) {
      callBackError(e.toString());
    }
  }

  void signOut(Function callBack) async {
    try {
      await authRepository.signOut();
      callBack();
    } catch (e) {
      print(e);
    }
  }

  Future<bool> isLoggedIn() async {
    if ((await authRepository.isLoggedIn()))
      return true;
    else 
      return false;
  }

  void goToHomeScreen(){
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }

  void showSnackBar(String erro){
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(erro),
      backgroundColor: Colors.red,
    ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
