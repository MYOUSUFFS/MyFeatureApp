// import 'package:flutter/cupertino.dart';
// import 'dart:ui';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login_page.dart';

class MyJobs extends StatefulWidget {
  const MyJobs({Key? key}) : super(key: key);

  @override
  State<MyJobs> createState() => _MyJobsState();
}

class _MyJobsState extends State<MyJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.brown[50],
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return jobItem();
          },
        ),
      ),
    ));
  }

  jobItem() {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 5.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Text(
                      "Booking Id ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  widthShotCut(3),
                  Text(
                    "#15154",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    "Fare",
                    style: TextStyle(color: Colors.grey),
                  ),
                  widthShotCut(5),
                  Text(
                    "£90",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              heightShotCut(10),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Pick up",
                          style: TextStyle(color: Colors.grey),
                        ),
                        heightShotCut(6),
                        addressText(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Drop",
                          style: TextStyle(color: Colors.grey),
                        ),
                        heightShotCut(6),
                        addressText(),
                      ],
                    ),
                  )
                ],
              ),
              heightShotCut(15),
              Row(children: [
                Icon(Icons.airline_seat_recline_extra_outlined),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: Text(
                    "Forward Facing",
                    style: TextStyle(color: HexColor("#696969")),
                  ),
                ),
              ]),
              heightShotCut(6),
              Row(
                children: [
                  Transform.rotate(
                    angle: 120 / 180,
                    child: Icon(
                      Icons.flight,
                      textDirection: TextDirection.rtl,
                      color: HexColor("#686868"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Text(
                      "W9 4452    ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Transform.rotate(
                    angle: 120 / 180,
                    child: Icon(
                      Icons.flight,
                      textDirection: TextDirection.rtl,
                      color: HexColor("#686868"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Text(
                      "India     ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  // Transform.rotate(
                  //   angle: 120 / 180,
                  //   child: Image.asset(
                  //     "assets/british_logo_icon/icons/flight-time.png",
                  //     height: 18,
                  //   ),
                  // ),
                  widthShotCut(8),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Text(
                      "After 60min",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              heightShotCut(6),
              Row(
                children: [
                  // Image.asset(
                  //   "assets/british_logo_icon/icons/date.png",
                  //   height: 18,
                  // ),
                  widthShotCut(6),
                  // textDirection: TextDirection.rtl,
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Text(
                      "26 June 2022 | 20.00am",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  // widthShotCut(8),
                  // Image.asset(
                  //   "assets/british_logo_icon/icons/car.png",
                  //   height: 14,
                  // ),
                  widthShotCut(8),
                  Text(
                    "Standard Saloon",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              heightShotCut(15),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Additional Note:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              heightShotCut(5),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade200, width: 0),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  // border: OutlineInputBorder(),
                  hintText: ' ',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 80),
                ),
              ),
              heightShotCut(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 130,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green)),
                      child: Text("Accept"),
                    ),
                  ),
                  heightShotCut(3),
                  SizedBox(
                    width: 130,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red)),
                      child: Text("Decline"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  addressText() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "5th Floor Hyde \nPark Hayes 3, \n1 Millaington Road,\nHayes, UK,\nUB3 4AZ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
      ],
    );
  }
}