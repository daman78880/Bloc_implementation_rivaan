class ApiConfig {
  ApiConfig._();

  static const token =
      "";
  static const String baseUrl = "https://reqres.in";
  static const Duration receiveTimeout = Duration(milliseconds: 15000);
  static const Duration connectionTimeout = Duration(milliseconds: 15000);

  static const String login = '/api/login';
  static const String signUp = '/api/register';
  static const String userList = '/api/users';
  static const header = {
    'content-Type': 'application/json',
  };
}
