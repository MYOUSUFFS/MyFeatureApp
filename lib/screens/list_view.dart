// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:retry_build_api/model/list_view_api_model.dart';

class MyFirstList extends StatefulWidget {
  const MyFirstList({super.key});

  @override
  State<MyFirstList> createState() => _MyFirstListState();
}

class _MyFirstListState extends State<MyFirstList> {
  ListViewData myListview = ListViewData();
  bool isLoaded = false;
  getData() async {
    var request = await http.get(Uri.parse("https://reqres.in/api/unknown"));
    var response = json.decode(request.body);
    setState(() {
      myListview = ListViewData.fromJson(response);
      isLoaded = true;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),
          color: Colors.grey.shade300,
          child: ListView.builder(
            itemCount: myListview.data?.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(8),
              // color: Colors.white,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("${myListview.data?[index].id}"),
                      SizedBox(
                        width: 8,
                      ),
                      Text("data2")
                    ],
                  ),
                ),
              ),
            ),
            // children: [Text("data1"), Text("data2")],
          ),
        ),
      ),
    );
  }
}
