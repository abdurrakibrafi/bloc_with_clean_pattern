// lib/data/repositories/auth_repository.dart
import 'package:dio/dio.dart';

import '../core/errors/exceptions.dart';
import 'datasources.dart';

class AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepository(this.remoteDataSource);

  Future<Map<String, dynamic>> signIn(String email, String password) async {
    try {
      return await remoteDataSource.signIn(email, password);
    } catch (e) {
      throw ServerException();
    }
  }
}
