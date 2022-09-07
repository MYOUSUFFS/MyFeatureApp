// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyFlightApi extends StatefulWidget {
  const MyFlightApi({Key? key}) : super(key: key);

  @override
  State<MyFlightApi> createState() => _MyFlightApiState();
}

class _MyFlightApiState extends State<MyFlightApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text("Comming"))),
    );
  }
}
