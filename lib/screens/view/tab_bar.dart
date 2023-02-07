// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

List<String> tabTopList = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabTopList.length,
          itemBuilder: (context, index) => Wrap(
            children: [
              Container(
                color: Colors.amber,
                margin: EdgeInsets.all(8),
                child: Text(
                  tabTopList[index],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
