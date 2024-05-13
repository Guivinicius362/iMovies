import 'package:auth/data/auth/auth_data_source.dart';
import 'package:core/core.dart';

class AuthRepository {
  final _authDataSource = GetIt.instance.get<AuthDataSource>();

  Future<UserCredential> signInWithEmailAndPassword(
          String email, String password) =>
      _authDataSource.signInWithEmail(email, password);
}
