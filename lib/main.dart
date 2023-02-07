import 'package:flutter/material.dart';
import 'package:retry_build_api/screens/view/my_home.dart';
import 'package:retry_build_api/screens/some_more/tabbar.dart';
import 'package:provider/provider.dart';
import 'package:retry_build_api/screens/view/todo.dart';

import 'provider/movie_provider.dart';
import 'screens/testting/wallet_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MovieOtherProvider>(
          create: (_) => MovieOtherProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
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
        home: const MyWallet(),
      ),
    );
  }
}
