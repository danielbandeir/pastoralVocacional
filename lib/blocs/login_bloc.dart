import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends BlocBase {
  
  BehaviorSubject<String> _email = BehaviorSubject(); 
  BehaviorSubject<String> _password = BehaviorSubject();

  Observable<String> get email => _email.stream; 
  Observable<String> get password => _password.stream;

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  void submit(Function(String) callBackError){
    try {
      //TODO
    } catch (e) {
      callBackError("Erro ao realizar login");
    }
  }

  @override
  void dispose() {
    _email.close();
    _password.close();
    super.dispose();
  }
}