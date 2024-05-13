import 'package:auth/data/auth/auth_data_source.dart';
import 'package:core/core.dart';

class RemoteAuthDataSource extends AuthDataSource {
  final FirebaseAuth _firebaseAuth;

  RemoteAuthDataSource({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  Future<UserCredential> signInWithEmail(String email, String password) async {
    try {
      final response = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
