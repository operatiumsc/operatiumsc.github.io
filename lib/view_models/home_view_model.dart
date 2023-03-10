import 'package:example/models/todo.dart';
import 'package:example/models/user.dart';
import 'package:example/repositories/todos_repo.dart';
import 'package:flutter/material.dart';

import '../repositories/home_repo.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({required this.homeRepo, required this.todosRepo});

  final HomeRepo homeRepo;
  final TodosRepo todosRepo;

  List<Todo> todos = [];
  late User user;

  Future<void> initData() async {
    user = await homeRepo.getUserProfile();
    todos = await todosRepo.getTodos();
    notifyListeners();
  }

  void checkTodo(int index, bool? val) {
    todos[index].completed = val;
    notifyListeners();
  }
}
