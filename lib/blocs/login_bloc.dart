import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/widgets.dart';
import 'package:pastoravocacional/blocs/login_validators.dart';
import 'package:pastoravocacional/repositories/auth_respository.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends BlocBase with LoginValidators {
  final AuthRepository authRepository;
  BuildContext context;

  BehaviorSubject<String> _email = BehaviorSubject();
  BehaviorSubject<String> _password = BehaviorSubject();

  LoginBloc(this.authRepository);

  Observable<String> get email => _email.stream.transform(validateEmail);
  Observable<String> get password =>
      _password.stream.transform(validatePassword);
  Observable<bool> get submitValid =>
      Observable.combineLatest2(email, password, (email, password) => true);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  void submit(Function(String) callBackError) async {
    try {
      await authRepository.signIn(_email.value, _password.value);
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    } catch (e) {
      callBackError("Erro ao realizar login");
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

  @override
  void dispose() {
    _email.close();
    _password.close();
    super.dispose();
  }
}
