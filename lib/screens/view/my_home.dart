// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retry_build_api/screens/master.dart/my_feature.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: welcomeScreen(),
    );
  }

  SafeArea welcomeScreen() {
    return SafeArea(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => MyFeature()),
              ),
            );
          },
          child: Text("Welcome"),
        ),
      ),
    );
  }
}
