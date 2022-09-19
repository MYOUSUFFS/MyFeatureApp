// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyFirstList extends StatefulWidget {
  const MyFirstList({super.key});

  @override
  State<MyFirstList> createState() => _MyFirstListState();
}

class _MyFirstListState extends State<MyFirstList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),
          color: Colors.grey.shade300,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(8),
              // color: Colors.white,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("data1"),
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
