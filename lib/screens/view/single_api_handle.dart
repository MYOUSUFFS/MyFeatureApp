// ignore_for_file: prefer_const_constructors
//TODO this is local data set your system{
//   "name": "Yousuff",
//   "phone_number": 1234567890
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:retry_build_api/model/single_api_model.dart';

class SingleAPIdata extends StatefulWidget {
  const SingleAPIdata({super.key});

  @override
  State<SingleAPIdata> createState() => _SingleAPIdataState();
}

class _SingleAPIdataState extends State<SingleAPIdata> {
  SingleApi singleApi = SingleApi();
  bool isLoaded = false;

  getResponse() async {
    var request = await http.get(
      // Uri.parse("http://0.0.0.0:3001/single_api"), /*TODO This local ip is iOS*/

      Uri.parse("http://10.0.2.2:3001/single_api"), /*TODO This local ip is Android */
    );
    var response = json.decode(request.body);
    // print(response);
    setState(() {
      singleApi = SingleApi.fromJson(response);
      isLoaded = true;
    });
    // print('${singleApi.column1} hlo');
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
          child: isLoaded
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //TODO This is New version is ${data.name} like this
                    Text("${singleApi.name}"),
                    Text("${singleApi.phoneNumber}"),
                    Image.asset(
                      'assets/appIconAndroid.png',
                      width: 50,
                    ),
                  ],
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
