// lib/core/constants/api_constants.dart
class ApiConstants {
  static const String baseUrl = "https://www.server.thereflectivespiritapp.com/api/v1";

  // Auth APIs
  static const String signIn = "$baseUrl/auth/login";
  static const String signUp = "/signup";

  // Example: User APIs
  static const String getProfile = "/user/profile";
  static const String updateProfile = "/user/update";

  // Example: Other APIs
  static const String getPosts = "/posts";
  static const String createPost = "/posts/create";
}
