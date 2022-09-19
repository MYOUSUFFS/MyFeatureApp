import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:retry_build_api/model/list_view_model.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  ListViewData listData = ListViewData();
  getdata() async {
    var request = await http.get(
      Uri.parse("https://reqres.in/api/unknown"),
    );
    var response = json.decode(request.body);
    setState(() {
      listData = ListViewData.fromJson(response);
      print(listData.data![0].id);
    });
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: listData.data?.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const Icon(Icons.list),
              trailing: const Text(
                "GFG",
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
              title: Text("${listData.data?[index].name}"),
            );
          },
        ),
      ),
    );
  }
}
