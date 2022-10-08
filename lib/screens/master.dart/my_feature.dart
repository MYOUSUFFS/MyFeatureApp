// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retry_build_api/screens/bec_api.dart';
import 'package:retry_build_api/screens/list_view.dart';
import 'package:retry_build_api/screens/little_big_single_api.dart';
import 'package:retry_build_api/screens/pdf_downloaded.dart';
import 'package:retry_build_api/screens/single_api_handle.dart';

import '../flight_api_screen.dart';
import '../list_view_api.dart';
import '../login_page.dart';

class MyFeature extends StatefulWidget {
  const MyFeature({Key? key}) : super(key: key);

  @override
  State<MyFeature> createState() => _MyFeatureState();
}

class _MyFeatureState extends State<MyFeature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              heightShotCut(30),
              doubleBox(
                nextButton('Login Page', Colors.blueAccent.shade400, MyLogIn()),
                nextButton('Pdf => Create Download open',
                    Theme.of(context).colorScheme.primary, PdfDownloader()),
              ),
              heightShotCut(30),
              doubleBox(
                nextButton(
                    'Click TO Flight API Screen', Colors.amber, MyFlightApi()),
                nextButton('BEC Job Screen', Colors.red, MyJobs()),
              ),
              heightShotCut(30),
              doubleBox(
                nextButton('Single Data Set', Colors.blueAccent.shade400,
                    SingleAPIdata()),
                nextButton(
                    'Little Big Data Set', Colors.deepPurple, LittleBigApi()),
              ),
              heightShotCut(30),
              doubleBox(
                nextButton('List View', Colors.brown, MyFirstList()),
                nextButton(
                    'List view builder', Colors.indigoAccent, MyListView()),
              ),
              heightShotCut(30),
            ],
          ),
        ),
      ),
    );
  }

  Widget nextButton(String val, color, jumb) {
    return TextButton(
      style: TextButton.styleFrom(
        // Foreground color
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: color,
        fixedSize: Size(125, 175),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // minimumSize: Size.fromHeight(50),
      )
      // .copyWith(elevation: ButtonStyleButton.allOrNull(0.0))
      ,
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => jumb,
          ),
        );
      },
      child: Text(
        val,
        textAlign: TextAlign.center,
        // maxLines: null,
      ),
    );
  }

  Widget doubleBox(leftBox, rightBox) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        leftBox,
        widthShotCut(30),
        rightBox,
      ],
    );
  }
}
