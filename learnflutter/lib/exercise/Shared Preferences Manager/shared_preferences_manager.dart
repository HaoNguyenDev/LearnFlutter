import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  // 1. Create single instance for this call
  static final SharedPreferencesManager _instance = SharedPreferencesManager._internal();

  // 2. Define a SharedPreferences instance
  static SharedPreferences? _prefs;

  // 3. method private unique init
  SharedPreferencesManager._internal();

  // 4. Factory constructor to return unique instance
  factory SharedPreferencesManager() {
    return _instance;
  }

  // 5. Create SharedPreferences
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // 6. Methods save and get data
  Future<bool> setString(String key, String value) async {
    return _prefs?.setString(key, value) ?? false;
  }

  String? getString(String key) {
    return _prefs?.getString(key);
  }

  Future<bool> setBool(String key, bool value) async {
    return _prefs?.setBool(key, value) ?? false;
  }

  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  Future<bool> setInt(String key, int value) async {
    return _prefs?.setInt(key, value) ?? false;
  }

  int? getInt(String key) {
    return _prefs?.getInt(key);
  }
}