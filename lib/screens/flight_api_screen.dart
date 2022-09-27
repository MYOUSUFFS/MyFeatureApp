// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/flight_api_model.dart';

class MyFlightApi extends StatefulWidget {
  const MyFlightApi({Key? key}) : super(key: key);

  @override
  State<MyFlightApi> createState() => _MyFlightApiState();
}

class _MyFlightApiState extends State<MyFlightApi> {
  MyFlightApiModel view = MyFlightApiModel();
  getFlightApi() async {
    var request = await http.get(
      Uri.parse("http://localhost:3002/flight/api/multi"),
      // Uri.parse(
      //     "http://api.aviationstack.com/v1/flights?access_key=ded1655ad569ba243bd2fa9b46739c0f"),
    );
    var response = json.decode(request.body);
    // debugPrint(response.toString());
    if (mounted) {
      setState(() {
        view = MyFlightApiModel.fromJson(response);
        debugPrint(view.data?.length.toString());
      });
    }
  }

  @override
  void initState() {
    getFlightApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Total : "),
                Text("${view.pagination?.total}"),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: view.data?.length,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(8),
                        child: Card(
                          color: Colors.deepPurpleAccent[300],
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.deepPurpleAccent[300],
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Flight No : ${view.data?[index].flight?.number}"),
                                      Text(
                                          "IATA code : ${view.data?[index].departure?.iata}"),
                                      Text(
                                          "Flight delay : ${view.data?[index].departure?.delay}"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Flight No : ${view.data?[index].departure?.airport}"),
                                      Text(
                                          "IATA code : ${view.data?[index].departure?.timezone}"),
                                      Text(
                                          "Flight delay : ${view.data?[index].airline?.name}"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
