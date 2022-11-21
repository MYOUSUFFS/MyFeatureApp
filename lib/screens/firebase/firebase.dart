// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../firebase/firebase_curd/firebase_curd.dart';

class Firebase extends StatefulWidget {
  const Firebase({super.key});

  @override
  State<Firebase> createState() => _FirebaseState();
}

class _FirebaseState extends State<Firebase> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.yellow[700]),
        onPressed: () => FireBaseCURD(),
        child: Text('Firebase CURD'),
      ),
    );
  }
}
