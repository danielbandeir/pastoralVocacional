import 'dart:async';

mixin LoginValidators {
  String validateEmail(String email) => !(email.length > 0 && email.contains("@")) ? "E-mail inválido" : null;
  String validatePassword(String password) => !(password.length > 4) ? "Password deve conter pelo menos 4 caracteres" : null;
}
