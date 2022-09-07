import 'package:flutter/material.dart';
import 'package:retry_build_api/screens/master.dart/my_feature.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
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
                onPrimary: Theme.of(context).colorScheme.onPrimary,
                // Background color
                primary: Theme.of(context).colorScheme.primary,
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

SizedBox heightShotCut(double x) => SizedBox(
      height: x,
    );
SizedBox widthShotCut(double x) => SizedBox(
      width: x,
    );
