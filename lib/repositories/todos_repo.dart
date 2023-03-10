import 'package:dio/dio.dart';

import '../models/todo.dart';
import '../services/locator.dart';
import '../utils/constants.dart';

abstract class TodosRepo {
  Future<List<Todo>> getTodos();
}

class TodosRepoImpl implements TodosRepo {
  final api = locator<Dio>(instanceName: LocatorName.apiService);

  @override
  Future<List<Todo>> getTodos() async {
    final response = await api.get('/todos');
    final todos =
        List.from(response.data).map((e) => Todo.fromJson(e)).toList();
    return todos;
  }
}
