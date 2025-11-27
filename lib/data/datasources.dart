// lib/data/datasources/remote/auth_remote_datasource.dart
import 'package:dio/dio.dart';

class AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSource(this.dio);

  Future<Map<String, dynamic>> signIn(String email, String password) async {
    final response = await dio.post(
      'https://yourapi.com/signin',
      data: {'email': email, 'password': password},
    );
    return response.data;
  }


}
