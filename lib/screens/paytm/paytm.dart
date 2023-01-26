// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:paytm_allinonesdk/paytm_allinonesdk.dart';
import './edit_text.dart';

class Paytm extends StatefulWidget {
  const Paytm({super.key});
  @override
  State<StatefulWidget> createState() {
    return _PaytmState();
  }
}

class _PaytmState extends State<Paytm> {
  String mid = "", orderId = "", amount = "", txnToken = "";
  String result = "";
  bool isStaging = false;
  bool isApiCallInprogress = false;
  String callbackUrl = "";
  bool restrictAppInvoke = false;
  bool enableAssist = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  EditText('Merchant ID', mid, onChange: (val) => mid = val),
                  EditText('Order ID', orderId,
                      onChange: (val) => orderId = val),
                  EditText('Amount', amount, onChange: (val) => amount = val),
                  EditText('Transaction Token', txnToken,
                      onChange: (val) => txnToken = val),
                  EditText('CallBack URL', callbackUrl,
                      onChange: (val) => callbackUrl = val),
                  Row(
                    children: <Widget>[
                      Checkbox(
                          activeColor: Theme.of(context).primaryColor,
                          value: isStaging,
                          onChanged: (bool? val) {
                            setState(() {
                              isStaging = val!;
                            });
                          }),
                      Text("Staging")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                          activeColor: Theme.of(context).primaryColor,
                          value: restrictAppInvoke,
                          onChanged: (bool? val) {
                            setState(() {
                              restrictAppInvoke = val!;
                            });
                          }),
                      Text("Restrict AppInvoke")
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: isApiCallInprogress
                          ? null
                          : () {
                              _startTransaction();
                            },
                      child: Text('Start Transcation'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text("Message : "),
                  ),
                  Text(result),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _startTransaction() async {
    if (txnToken.isEmpty) {
      return;
    }
    var sendMap = <String, dynamic>{
      "mid": mid,
      "orderId": orderId,
      "amount": amount,
      "txnToken": txnToken,
      "callbackUrl": callbackUrl,
      "isStaging": isStaging,
      "restrictAppInvoke": restrictAppInvoke,
      "enableAssist": enableAssist
    };
    try {
      var response = AllInOneSdk.startTransaction(mid, orderId, amount,
          txnToken, callbackUrl, isStaging, restrictAppInvoke, enableAssist);
      response.then((value) {
        setState(() {
          result = value.toString();
        });
      }).catchError((onError) {
        if (onError is PlatformException) {
          setState(() {
            result = onError.message.toString() +
                " \n  " +
                onError.details.toString();
          });
        } else {
          setState(() {
            result = onError.toString();
          });
        }
      });
    } catch (err) {
      result = err.toString();
    }
  }
}
