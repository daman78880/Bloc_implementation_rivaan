import 'package:bloc_implementation_rivaan/init_dependencies.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommonSharePreference {
  CommonSharePreference._();
  static const String selectedLanguage = 'Language';
  static Future saveString({required String key,required String value}) async {
    await serviceLocator<SharedPreferences>().setString(key,value);
  }

  static Future<String> getString({required String key}) async {
    return serviceLocator<SharedPreferences>().getString(key)??'';
  }
}
