import 'package:example/models/user.dart';

abstract class HomeRepo {
  Future<User> getUserProfile();
}

class HomeRepoImpl extends HomeRepo {
  @override
  Future<User> getUserProfile() async {
    final response = await Future.delayed(const Duration(seconds: 3));
    return User.fromJson(response.data);
  }
}
