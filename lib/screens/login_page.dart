import 'package:flutter/material.dart';
import 'master.dart/my_feature.dart';

class MyLogIn extends StatefulWidget {
  const MyLogIn({super.key});

  @override
  State<MyLogIn> createState() => _MyLogInState();
}

class _MyLogInState extends State<MyLogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homePageFunction(),
    );
  }

  SafeArea homePageFunction() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                foregroundColor: Theme.of(context).colorScheme.onPrimary, backgroundColor: Theme.of(context).colorScheme.primary,
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
    );
  }
}

Widget heightShotCut(double x) => SizedBox(
      height: x,
    );
Widget widthShotCut(double x) => SizedBox(
      width: x,
    );
