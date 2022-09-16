// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SingleAPIdata extends StatefulWidget {
  const SingleAPIdata({super.key});

  @override
  State<SingleAPIdata> createState() => _SingleAPIdataState();
}

class _SingleAPIdataState extends State<SingleAPIdata> {
  getResponse() async {
    var request = await http.get(
      Uri.parse("https://reqres.in/api/users/2"),
    );
    var response = json.decode(request.body);
    print(response);
  }

  @override
  void initState() {
    getResponse();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name"),
              Text("Phone Number"),
              Image.asset(
                'assets/appIconAndroid.png',
                width: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
