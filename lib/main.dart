import 'package:bloc_with_clean_pattern/presentation/blocs/auth_blocs/auth_blocs.dart';
import 'package:bloc_with_clean_pattern/presentation/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'data/datasources.dart';
import 'data/repositories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(
        create: (_) => AuthBloc(AuthRepository(AuthRemoteDataSource(dio))),
        child: SignInScreen(),
      ),
    );
  }
}
