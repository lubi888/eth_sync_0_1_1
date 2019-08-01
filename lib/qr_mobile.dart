import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qrcode_reader/qrcode_reader.dart';

// void main() {
//   runApp(new MyApp());
// }

class QRReader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData.dark(),      
      title: 'QRCode Reader Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  final Map<String, dynamic> pluginParameters = {};

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<String> _barcodeString;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: const Text('QRCode Reader Example',
        style: TextStyle(color: Colors.red),
        // textAlign: TextAlign.right,
        ),
      ),
      body: new Center(
          child: new FutureBuilder<String>(
              future: _barcodeString,
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                return new Text(snapshot.data != null ? snapshot.data : '',
                style: TextStyle(color: Colors.red),);
              })),
      floatingActionButton: new FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            _barcodeString = new QRCodeReader()
                .setAutoFocusIntervalInMs(200)
                .setForceAutoFocus(true)
                .setTorchEnabled(true)
                .setHandlePermissions(true)
                .setExecuteAfterPermissionGranted(true)
                // .setFrontCamera(false)
                .scan();
          });
        },
        tooltip: "Reader the QRCode\n save the eth addr",
        label: Text("get camera working and get some eth"),
        icon: new Icon(Icons.add_a_photo),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
