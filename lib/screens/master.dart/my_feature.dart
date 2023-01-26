// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:retry_build_api/screens/bec_api.dart';
import 'package:retry_build_api/screens/drop_down_setstate.dart';
import 'package:retry_build_api/screens/list_view.dart';
import 'package:retry_build_api/screens/little_big_single_api.dart';
import 'package:retry_build_api/screens/pdf_downloaded.dart';
import 'package:retry_build_api/screens/plus_minos.dart';
import 'package:retry_build_api/screens/single_api_handle.dart';
import 'package:retry_build_api/screens/todo.dart';
import 'package:retry_build_api/screens/whatsapp.dart';
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
          child: Center(
            child: Wrap(
              children: [
                nextButton('Whatsapp Web', Colors.green[400], WhatsappWeb()),
                nextButton('Login Page', Colors.blueAccent.shade400, MyLogIn()),
                nextButton('Pdf => Create Download open',
                    Theme.of(context).colorScheme.primary, PdfDownloader()),
                nextButton(
                    'Click TO Flight API Screen', Colors.amber, MyFlightApi()),
                nextButton('BEC Job Screen', Colors.red, MyJobs()),
                nextButtonOverText('Single Data Set', '(It\'s not Work)',
                    Colors.blueAccent.shade400, SingleAPIdata()),
                nextButtonOverText('Little Big Data Set', '(It\'s not Work)',
                    Colors.deepPurple, LittleBigApi()),
                nextButton('List View', Colors.brown, MyFirstList()),
                nextButton(
                    'List view builder', Colors.indigoAccent, MyListView()),
                nextButton('Drop Down SetState', Colors.cyan, MyDropDown()),
                nextButton('State', Colors.blue[300], PlusMinos()),
                nextButton('ChatGPT', Colors.green[900], TodoList()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget nextButtonOverText(text1, text2, color, jumb) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: TextButton(
        style: TextButton.styleFrom(
          // Foreground color
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          backgroundColor: color,
          fixedSize: Size(125, 175),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              textAlign: TextAlign.center,
              // maxLines: null,
            ),
            Text(
              text2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.red),
              // maxLines: null,
            ),
          ],
        ),
      ),
    );
  }

  Widget nextButton(String val, color, jumb) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: TextButton(
        style: TextButton.styleFrom(
          // Foreground color
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          backgroundColor: color,
          fixedSize: Size(125, 175),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
