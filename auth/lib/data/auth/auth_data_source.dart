import 'package:core/core.dart';

abstract class AuthDataSource {
  Future<UserCredential> signInWithEmail(String email, String password);
}
