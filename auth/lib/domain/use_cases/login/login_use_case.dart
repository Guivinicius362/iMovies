import 'package:auth/domain/repositories/auth/auth_repository.dart';
import 'package:core/core.dart';

class LoginWithEmailUseCase {
  final _authRepository = GetIt.instance.get<AuthRepository>();

  Future<UserCredential> call(String email, String password) async {
    final userCredential =
        await _authRepository.signInWithEmailAndPassword(email, password);

    return userCredential;
  }
}
