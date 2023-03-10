import 'package:example/services/local_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group(LocalStorageServiceImpl, () {
    late SharedPreferences preferences;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
    });

    test('should initialize SharedPreferences instance', () async {
      preferences = await SharedPreferences.getInstance();
      expect(preferences, isA<SharedPreferences>());
    });

    test('should set and get string', () async {
      const String key = 'key';
      const String expectedString = 'foo';

      await preferences.setString(key, expectedString);

      final result = preferences.getString(key);

      expect(expectedString, result);
    });
  });
}
