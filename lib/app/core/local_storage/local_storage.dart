import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static Future<dynamic> getValue<T>(String key) async {
    return setInstance().then((sharedPreferences) {
      switch (T) {
        case double:
          return sharedPreferences.getDouble(key) ?? 0;
          break;
        case int:
          return sharedPreferences.getInt(key) ?? 0;
          break;
        case String:
          return sharedPreferences.getString(key) ?? '';
          break;
        case List:
          return sharedPreferences.getStringList(key) ?? [];
          break;
        case bool:
          return sharedPreferences.getBool(key) ?? false;
          break;
        default:
          return sharedPreferences.getString(key) ?? '';
      }
    });
  }

  static Future<SharedPreferences> setInstance() async {
    return SharedPreferences.getInstance();
  }

  static Future<bool> setValue<T>(String key, dynamic value) async {
    return setInstance().then((sharedPreferences) {
      switch (T) {
        case double:
          return sharedPreferences.setDouble(key, value as double);
          break;
        case int:
          return sharedPreferences.setInt(key, value as int);
          break;
        case String:
          return sharedPreferences.setString(key, value as String);
          break;
        case List:
          return sharedPreferences.setStringList(key, value as List<String>);
          break;
        case bool:
          return sharedPreferences.setBool(key, value as bool);
          break;
        default:
          return sharedPreferences.setString(key, value as String);
      }
    });
  }
}
