abstract class AuthRepository {
  Future<void> signIn(String email, String senha);
  Future<void> signOut();
}