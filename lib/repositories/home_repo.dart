abstract class HomeRepository {
  Future<String> getUserProfile();
}

class HomeRepositoryImpl extends HomeRepository {
  @override
  Future<String> getUserProfile() async {
    await Future.delayed(Duration(seconds: 3));
    return 'Foo';
  }
}
