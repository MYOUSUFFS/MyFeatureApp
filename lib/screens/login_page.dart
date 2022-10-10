// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'master.dart/my_feature.dart';
import 'package:nb_utils/nb_utils.dart';

class MyLogIn extends StatefulWidget {
  const MyLogIn({super.key});

  @override
  State<MyLogIn> createState() => _MyLogInState();
}

class _MyLogInState extends State<MyLogIn> {
  final emailandphone = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homePageFunction(),
    );
  }

  SafeArea homePageFunction() {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formKey,
                child: TextFormField(
                  controller: emailandphone,
                  autofocus: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Email or Phone No",
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.call_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter value';
                    }
                    bool emailV = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value);
                    if (value.isInt && value.length < 10 ||
                        value.isInt && value.length > 10) {
                      return 'Please enter valid 10 digit Phone No.';
                    } else if (value.isInt) {
                      return null;
                    } else if (!emailV) {
                      return 'Enter a valid email address';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              heightShotCut(20),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formKey1,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 3) {
                      return 'Please enter value';
                    }
                    return null;
                  },
                  controller: password,
                  autofocus: true,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    // hoverColor: Colors.black,
                    labelText: "password",
                    labelStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: Transform.rotate(
                      angle: -120 / 180,
                      child: const Icon(
                        Icons.key,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              heightShotCut(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Email"),
                  heightShotCut(10),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              heightShotCut(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Password"),
                  heightShotCut(10),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              heightShotCut(10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // Foreground color
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyFeature(),
                    ),
                  );
                },
                child: const Text('Click To Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget heightShotCut(double x) => SizedBox(
      height: x,
    );
Widget widthShotCut(double x) => SizedBox(
      width: x,
    );
