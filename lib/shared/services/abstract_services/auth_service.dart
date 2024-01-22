abstract class AuthService {
  /// Return userId or null
  Future<String?> checkAuth();

  /// Return userId
  Future<String> signIn({
    required String login,
    required String password,
  });

  /// Return userId
  Future<String> signUp({
    required String login,
    required String password,
  });

  Future<void> signOut(String userId);
}
