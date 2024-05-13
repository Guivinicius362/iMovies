import 'package:auth/presentation/login/state_management.dart/login_data.dart';
import 'package:core/core.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  const LoginInitial({
    required this.data,
  });

  final LoginData data;

  @override
  List<Object> get props => [data];
}

class LoginLoading extends LoginState {
  const LoginLoading();

  @override
  List<Object> get props => [];
}

class LoginSuccess extends LoginState {
  const LoginSuccess();

  @override
  List<Object> get props => [];
}
