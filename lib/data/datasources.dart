// lib/data/datasources/remote/auth_remote_datasource.dart
// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import '../core/constant/api_constant.dart';
import '../core/errors/exceptions.dart';

class AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSource(this.dio);

  Future<Map<String, dynamic>> signIn(String email, String password) async {
    try {
      final response = await dio.post(
        ApiConstants.signIn,
        data: {'email': email, 'password': password},
      );

      print("SignIn Response Status: ${response.statusCode}");
      print("SignIn Response Data: ${response.data}");

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw ServerException("Invalid response: ${response.statusCode}");
      }
    } catch (e) {
      print("SignIn DataSource Error: $e");
      throw ServerException(e.toString());
    }
  }
}
