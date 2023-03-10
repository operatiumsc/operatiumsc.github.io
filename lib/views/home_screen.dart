import 'package:example/view_models/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeViewModel homeViewModel;

  @override
  void initState() {
    homeViewModel = Provider.of<HomeViewModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Example App'),
      ),
      body: Consumer<HomeViewModel>(
        builder: (_, viewModel, __) => ListView.builder(
          itemBuilder: (context, index) => CheckboxListTile(
            value: viewModel.todos[index].completed,
            title: Text(viewModel.todos[index].title ?? ''),
            onChanged: (value) {
              viewModel.checkTodo(index, value);
            },
          ),
        ),
      ),
    );
  }
}
