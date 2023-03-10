import 'package:dio/dio.dart';
import 'package:example/repositories/home_repo.dart';
import 'package:example/repositories/todos_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/constants.dart';
import 'api.dart';
import 'local_storage.dart';
import 'package_info.dart';

//Global
final locator = GetIt.instance;

void setUpLocator() {
  locator.registerSingletonAsync<SharedPreferences>(
      () async => await LocalStorageServiceImpl().init());

  //Lazily
  locator.registerLazySingleton<PackageInfoService>(
      () => PackageInfoServiceImpl());

  //Factory
  locator.registerFactory<Dio>(() => DioClient().init(),
      instanceName: LocatorName.apiService);
  locator.registerFactory<Dio>(() => DioClientWithoutAuth().init(),
      instanceName: LocatorName.apiServiceWithoutAuth);

  locator.registerFactory<HomeRepo>(() => HomeRepoImpl());
  locator.registerFactory<TodosRepo>(() => TodosRepoImpl());
}
