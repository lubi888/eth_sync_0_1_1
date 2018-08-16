import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fast_qr_reader_view/fast_qr_reader_view.dart';

List<CameraDescription> cameras;

//Future<Null> main() async {
//  // Fetch the available cameras before initializing the app.
//  try {
//    cameras = await availableCameras();
//  } on QRReaderException catch (e) {
//    logError(e.code, e.description);
//  }
//  runApp(new MyAppQR());
//}

class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => new _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  QRReaderController controller;

  @override
  void initState() {
    super.initState();
    controller = new QRReaderController(cameras[0], ResolutionPreset.medium, [CodeFormat.qr], (dynamic value){
      print(value); // the result!
      // ... do something
      // wait 3 seconds then start scanning again.
      new Future.delayed(const Duration(seconds: 3), controller.startScanning);
    });
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
      controller.startScanning();
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return new Container();
    }
    return new AspectRatio(
        aspectRatio:
        controller.value.aspectRatio,
        child: new QRReaderPreview(controller));
  }
}