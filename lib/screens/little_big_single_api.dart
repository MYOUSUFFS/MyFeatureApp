// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:retry_build_api/model/little_big_model.dart';
import 'package:retry_build_api/model/single_api_model.dart';

class LittleBigApi extends StatefulWidget {
  const LittleBigApi({super.key});

  @override
  State<LittleBigApi> createState() => _LittleBigApiState();
}

class _LittleBigApiState extends State<LittleBigApi> {
  LittleBig nasted = LittleBig(data: Data(), support: Support());
  SingleApi nasted2 = SingleApi();
  bool isLoaded = false;
  getData() async {
    var required = await http.get(
      Uri.parse("https://reqres.in/api/users/2"),
    );
    var required2 = await http.get(
      Uri.parse("http://0.0.0.0:3001/single_api"),
    );
    var response = json.decode(required.body);
    var response2 = json.decode(required2.body);
    setState(() {
      nasted = LittleBig.fromJson(response);
      nasted2 = SingleApi.fromJson(response2);
      isLoaded = true;
    });
  }

  // getData2() async {
  //   var required = await http.get(
  //     Uri.parse("http://0.0.0.0:3001/single_api"),
  //   );
  //   var response = json.decode(required.body);
  //   setState(() {
  //     nasted2 = SingleApi.fromJson(response);
  //     isLoaded = true;
  //   });
  // }

  @override
  void initState() {
    getData();
    // getData2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: isLoaded
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network("${nasted.data.avatar}"),
                    Text("${nasted.data.firstName}"),
                    Text("${nasted.support.url}"),
                    Text("${nasted2.name}"),
                    Text("${nasted2.phoneNumber}")
                  ],
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
