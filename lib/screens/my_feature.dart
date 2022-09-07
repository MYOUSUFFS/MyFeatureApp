// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retry_build_api/screens/pdf_downloaded.dart';

import 'flight_api_screen.dart';
import 'my_home.dart';

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
                      builder: (context) => const PdfDownloader(),
                    ),
                  );
                },
                child: const Text('Create Pdf, Download and open'),
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
                      builder: (context) => const MyFlightApi(),
                    ),
                  );
                },
                child: const Text('Click TO Flight API Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
