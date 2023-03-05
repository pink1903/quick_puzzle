import 'package:global_configs/global_configs.dart';


class AppConfiguration {
  Future<void> loadConfig() async {
    await GlobalConfigs()
        .loadJsonFromdir('assets/configurations/app_configuration.json');
  }

  T? _getValue<T>(String key) {
    final value = GlobalConfigs().get<T>(key);
    return value;
  }

  String get baseUrl => _getValue<String>('baseUrl') ?? '';
  String get baseUrlApi => Uri.parse(baseUrl).origin;
  String get authBaseUrl => _getValue<String>('authBaseUrl') ?? '';
  String get clientId => _getValue<String>('clientId') ?? '';
  String get loginUrl => _getValue<String>('loginUrl') ?? '';
  String get logoutUrl => _getValue<String>('logoutUrl') ?? '';
  String get aiUrl =>  _getValue<String>('aiBaseUrl') ?? '';
  String get mDMBaseUrl =>  _getValue<String>('mdmBaseUrl') ?? '';
  String get ssoBaseUrl =>  _getValue<String>('ssoBaseUrl') ?? '';
  String get subPath => _getValue<String>('subPath') ?? '';
}
