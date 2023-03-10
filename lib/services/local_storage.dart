import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorageService {
  Future init();
}

class LocalStorageServiceImpl implements LocalStorageService {
  @override
  Future<SharedPreferences> init() async {
    final preference = await SharedPreferences.getInstance();
    return preference;
  }
}
