// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    List<String> tabNum = ["data", "Hell"];
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              // Text("H")
              SizedBox(
                height: 30,
                child: TabBar(
                  tabs: tabNum.map((value) => Text(value)).toList(),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Text("Hello"),
                    Text("Dio"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
