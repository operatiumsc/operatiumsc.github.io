import 'package:example/services/locator.dart';
import 'package:example/services/package_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('Locator', () {
    setUpAll(() async {
      TestWidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues({});
      PackageInfo.setMockInitialValues(
        appName: 'Charairat',
        packageName: 'com.example.charairat',
        version: '1.1.1',
        buildNumber: '111',
        buildSignature: 'buildSignature',
        installerStore: 'installerStore',
      );
      setUpLocator();
    });

    test('Can register SharedPreferences instance', () async {
      final preferences = locator<SharedPreferences>();

      const String key = 'locator';
      const String expectedResult = 'ok';
      await preferences.setString(key, expectedResult);
      final result = preferences.getString(key);

      expect(expectedResult, result);
    });

    test('Can register PackageInfoService', () async {
      final packageInfo = locator<PackageInfoService>();
      final version = await packageInfo.getVersion();

      expect(version, isA<String>());
    });
  });
}
