import 'app_config.dart';

class DevelopmentAppConfig {
  static Future<void> setup() async {
    AppConfig.apiUrl = 'https://api.dev.aamar.link/';
  }
}
