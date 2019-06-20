//Abstract class for auth repository with firebase
abstract class AuthRepository {
  Future<void> signIn(String email, String senha);
  Future<bool> isLoggedIn();
  Future<void> signOut();
}