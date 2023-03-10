import 'package:package_info_plus/package_info_plus.dart';

abstract class PackageInfoService {
  Future<String> getVersion();
}

class PackageInfoServiceImpl implements PackageInfoService {
  @override
  Future<String> getVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
