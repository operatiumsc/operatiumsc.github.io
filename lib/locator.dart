import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'services/rest_service.dart';
import 'services/package_info.dart';

final locator = GetIt.instance;

void setUpLocator() {
  //Lazily
  locator.registerLazySingleton<PackageInfoService>(
      () => PackageInfoServiceImpl());

  //Factory
  
}
