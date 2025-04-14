import 'app_config.dart';

class ProductionAppConfig {
  static Future<void> setup() async {
    AppConfig.apiUrl = 'https://api.aamar.link/';
  }
}
