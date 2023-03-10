import 'package:shared_preferences/shared_preferences.dart';

import '../utils/constants.dart';
import 'locator.dart';

class TokenManager {
  SharedPreferences preferences = locator<SharedPreferences>();

  Future<void> cacheAuthToken(String authToken) async {
    await preferences.setString(LocalStorageKey.authToken, authToken);
  }

  String? getAuthToken() {
    return preferences.getString(LocalStorageKey.authToken);
  }

  Future<void> clearAuthToken() async {
    await preferences.remove(LocalStorageKey.authToken);
  }
}
