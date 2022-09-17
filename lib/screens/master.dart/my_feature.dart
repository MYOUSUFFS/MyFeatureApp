// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retry_build_api/screens/bec_api.dart';
import 'package:retry_build_api/screens/little_big_single_api.dart';
import 'package:retry_build_api/screens/pdf_downloaded.dart';
import 'package:retry_build_api/screens/single_api_handle.dart';

import '../flight_api_screen.dart';
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  // Foreground color
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  backgroundColor: Colors.blueAccent.shade400,
                  minimumSize: Size.fromHeight(50),
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyLogIn(),
                    ),
                  );
                },
                child: const Text(
                  'Login Page',
                ),
              ),
              heightShotCut(10),
              TextButton(
                style: TextButton.styleFrom(
                  // Foreground color
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  minimumSize: Size.fromHeight(50),
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PdfDownloader(),
                    ),
                  );
                },
                child: const Text(
                  'Pdf => Create Download open',
                ),
              ),
              heightShotCut(10),
              TextButton(
                style: TextButton.styleFrom(
                  // Foreground color
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  backgroundColor: Colors.amber,
                  minimumSize: Size.fromHeight(50),
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyFlightApi(),
                    ),
                  );
                },
                child: const Text(
                  'Click TO Flight API Screen',
                ),
              ),
              heightShotCut(10),
              TextButton(
                style: TextButton.styleFrom(
                  // Foreground color
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  backgroundColor: Colors.red, minimumSize: Size.fromHeight(50),
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyJobs(),
                    ),
                  );
                },
                child: const Text(
                  'BEC Job Screen',
                ),
              ),
              heightShotCut(10),
              TextButton(
                style: TextButton.styleFrom(
                  // Foreground color
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  backgroundColor: Colors.blueAccent.shade400,
                  minimumSize: Size.fromHeight(50),
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SingleAPIdata(),
                    ),
                  );
                },
                child: const Text(
                  'Single Data Set',
                ),
              ),
              heightShotCut(10),
              TextButton(
                style: TextButton.styleFrom(
                  // Foreground color
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  backgroundColor: Colors.deepPurple,
                  minimumSize: Size.fromHeight(50),
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LittleBigApi(),
                    ),
                  );
                },
                child: const Text(
                  'Single Data Set',
                ),
              ),
              heightShotCut(10),
            ],
          ),
        ),
      ),
    );
  }
}
