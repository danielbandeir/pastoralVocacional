import 'package:pastoravocacional/repositories/auth_respository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<void> signIn(String email, String senha) {
    try{
      _auth.signInWithEmailAndPassword(email: email, password: senha);
      return _auth.currentUser();
    } catch(e){
      return e;
    }
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    return null;
  }
  
}