import 'package:pastoravocacional/repositories/auth_respository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<void> signIn(String email, String senha) async {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
  }

  @override
  Future<void> signOut() async{
    await _auth.signOut();
  }

  @override
  Future<bool> isLoggedIn() async{
    return (await _auth.currentUser()) != null;
  }
  
}