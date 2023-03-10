import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'repositories/home_repo.dart';
import 'repositories/todos_repo.dart';
import 'services/locator.dart';
import 'view_models/home_view_model.dart';
import 'views/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeViewModel(
            homeRepo: locator<HomeRepo>(),
            todosRepo: locator<TodosRepo>(),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
