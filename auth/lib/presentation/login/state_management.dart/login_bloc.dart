import 'package:auth/domain/use_cases/login/login_use_case.dart';
import 'package:auth/presentation/login/state_management.dart/login_data.dart';
import 'package:auth/presentation/login/state_management.dart/login_state.dart';
import 'package:core/core.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit()
      : super(
          LoginInitial(
            data: LoginData(
              email: '',
              password: '',
            ),
          ),
        );

  final loginWithEmailUseCase = GetIt.instance.get<LoginWithEmailUseCase>();

  void onEmailChanged(String email) {
    final data = (state as LoginInitial).data.copyWith(email: email);
    emit(LoginInitial(data: data));
  }

  void onPasswordChanged(String password) {
    final data = (state as LoginInitial).data.copyWith(password: password);
    emit(LoginInitial(data: data));
  }

  Future<void> submit() async {
    final data = (state as LoginInitial).data;
    final email = data.email;
    final password = data.password;
    emit(const LoginLoading());
    try {
      final userCredential = await loginWithEmailUseCase.call(email, password);
      print(userCredential);
      emit(const LoginSuccess());
    } catch (e) {
      emit(
        LoginInitial(data: data),
      );
    }
  }
}
