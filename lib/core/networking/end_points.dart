class EndPoints {
  static const String baseUrl = 'https://api.safe.com'; // dev
  // static const String baseUrl = 'https://dev.safe.com'; // prod
  static const String login = '/api/v1/auth/login';
  static const String register = '/api/v1/auth/register';
  static const String authRefresh = '/api/v1/auth/refresh';
  static const String logout = '/api/v1/auth/logout';
  static const String profile = '/api/v1/users/profile';
}
