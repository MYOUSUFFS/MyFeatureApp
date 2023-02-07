import 'package:flutter/material.dart';
import 'package:retry_build_api/screens/view/login_page.dart';

class PlusMinos extends StatefulWidget {
  const PlusMinos({super.key});

  @override
  State<PlusMinos> createState() => _PlusMinosState();
}

class _PlusMinosState extends State<PlusMinos> {
  int count = 0;
  ingMent() {
    setState(() {
      count++;
    });
  }

  degMent() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: const TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color?>(Colors.blue)),
                  onPressed: () {
                    ingMent();
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                widthShotCut(10),
                TextButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color?>(Colors.blue)),
                  onPressed: () {
                    degMent();
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
