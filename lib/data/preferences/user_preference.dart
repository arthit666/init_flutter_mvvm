import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  static const prefToken = 'token';

  // final FlutterSecureStorage _storage = inject<FlutterSecureStorage>();

  UserPreference();

  // === Get Secure storage===

  // Future<String?> getToken() async {
  //   return await _storage.read(key: prefToken);
  // }

  // === Get Shared Preferences ===

  // Future<String?> getLanguageCode() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.getString(prefLanguageCode);
  // }

  // === Set Secure Storage===

  // setToken(String value) async {
  //   await _storage.write(key: prefToken, value: value);
  // }

  // === Set Shared Preferences ===

  // setLanguageCode(String value) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString(prefLanguageCode, value);
  // }

  // === ETC ===

  // clearPreference() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   _storage.delete(key: prefUserId);
  //   _storage.delete(key: prefToken);
  //   _storage.delete(key: prefRefreshToken);
  //   _storage.delete(key: prefUserName);
  //   _storage.delete(key: prefCompanyId);
  //   await prefs.remove(prefIsRemember);
  //   await prefs.remove(prefIsSuperUser);
  //   clearProject();
  //   clearPreviousRoute();
  // }

  // clearProject() async {
  //   _storage.delete(key: prefProjectId);
  //   _storage.delete(key: prefProjectTitle);
  //   _storage.delete(key: prefPermissionList);
  //   _storage.delete(key: prefCurrency);
  // }

  // clearPreviousRoute() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.remove(prefPreviousRoute);
  // }
}
