
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class PdfDownloader extends StatefulWidget {
  const PdfDownloader({Key? key}) : super(key: key);

  @override
  State<PdfDownloader> createState() => _PdfDownloaderState();
}

class _PdfDownloaderState extends State<PdfDownloader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: _dowPdf,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: const Text('TextButton1'),
          ),
        ),
      ),
    );
  }
}

Future<void> _dowPdf() async {
  final document = PdfDocument();
  //TODO Page landscape setting
  document.pageSettings.orientation = PdfPageOrientation.landscape;
  final page = document.pages.add();
  PdfFont font =
      PdfStandardFont(PdfFontFamily.helvetica, 84, style: PdfFontStyle.bold);
  String text = 'Test Driver Name';
  //TODO Offset is x,y axis &&&&&&&& Size is Image size
  Rect imageRect = const Offset(0.0, 310.0) & const Size(100, 100);
  //TODO 2nd
  Rect imageRect2 = const Offset(600.0, 310.0) & const Size(100, 100);

  // document.pageSettings.width;

  page.graphics.drawString(
    text,
    font,
    // brush: PdfBrushes.black,
    // format: PdfStringFormat(alignment: PdfTextAlignment.justify),
    bounds: Rect.fromLTRB(0, 0, document.pageSettings.size.width, 300),
  );
  page.graphics.drawImage(
      PdfBitmap(await _pdfImageData('appIconAndroid.png')), imageRect);
  page.graphics.drawImage(
      PdfBitmap(await _pdfImageData('appIconAndroid.png')), imageRect2);
  List<int> bytes = await document.save();
  document.dispose();
  saveAndLaunchFile(bytes, 'Name Board.pdf');
}

Future<Uint8List> _pdfImageData(String name) async {
  final data = await rootBundle.load('assets/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}

Future<void> saveAndLaunchFile(List<int> bytes, String fileName) async {
  final dir = (await getApplicationDocumentsDirectory()).path;
  final file = File('$dir/$fileName');
  final openPath = '$dir/$fileName';
  await file.writeAsBytes(bytes, flush: true);
  OpenFile.open(openPath);
}
