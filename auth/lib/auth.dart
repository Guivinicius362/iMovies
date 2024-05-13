library auth;

import 'package:auth/data/auth/auth_data_source.dart';
import 'package:auth/data/auth/remote_auth_data_source.dart';
import 'package:auth/domain/repositories/auth/auth_repository.dart';
import 'package:auth/domain/use_cases/login/login_use_case.dart';
import 'package:auth/presentation/login/state_management.dart/login_bloc.dart';
import 'package:core/core.dart';

final _getIt = GetIt.instance;

void initAuth() {
  // data
  _getIt.registerFactory<AuthDataSource>(() => RemoteAuthDataSource());
  // domain
  _getIt.registerFactory<AuthRepository>(() => AuthRepository());
  _getIt.registerFactory<LoginWithEmailUseCase>(() => LoginWithEmailUseCase());
  // presentation
  _getIt.registerFactory<LoginCubit>(() => LoginCubit());
}
