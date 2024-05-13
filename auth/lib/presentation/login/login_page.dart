import 'package:auth/presentation/login/state_management.dart/login_bloc.dart';
import 'package:auth/presentation/login/state_management.dart/login_state.dart';
import 'package:core/core.dart';
import 'package:design_system/theme/imovies_sizes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(IMoviesSizes.size4),
        child: BlocProvider(
          create: (context) => GetIt.instance<LoginCubit>(),
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Email/Phone Number',
                    ),
                    onChanged: context.read<LoginCubit>().onEmailChanged,
                  ),
                  const SizedBox(height: IMoviesSizes.size4),
                  TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                    onChanged: context.read<LoginCubit>().onPasswordChanged,
                  ),
                  const SizedBox(height: IMoviesSizes.size4),
                  ElevatedButton(
                    onPressed: () {
                      context.read<LoginCubit>().submit();
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: IMoviesSizes.size4),
                  TextButton(
                    onPressed: () {
                      // TODO: Navigate to register page
                    },
                    child: const Text('Register'),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: Navigate to recover password page
                    },
                    child: const Text('Recover Password'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
