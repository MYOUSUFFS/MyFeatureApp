import 'package:flutter/material.dart';
import 'package:retry_build_api/screens/my_home.dart';
import 'package:provider/provider.dart';
import 'package:retry_build_api/screens/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoListModel(),
      child: MaterialApp(
        theme: ThemeData(
          colorSchemeSeed: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const Myhome(),
      ),
    );
  }
}
