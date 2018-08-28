import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRMainScreen extends StatefulWidget {
  @override
  _QRMainScreenState createState() => new _QRMainScreenState();
}

class _QRMainScreenState extends State<QRMainScreen> {
  static const double _topSectionTopPadding = 50.0;
  static const double _topSectionBottomPadding = 20.0;
  static const double _topSectionHeight = 50.0;

//  String _dataString = "Hello from this QR code!";   //use with e.g.
  String _dataEthString = "0x12341234123412341234";   //eth addrs regEx '0x[20]'
  String _inputErrorText;
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _contentWidget(),
      resizeToAvoidBottomPadding: true,
    );
  }

  @override
  didUpdateWidget(Widget oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {});
  }

  _contentWidget() {
    final bodyHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).viewInsets.bottom;
    return new Container(
      color: const Color(0xFFFFFFFF),
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(
              top: _topSectionTopPadding,
              left: 20.0,
              right: 10.0,
              bottom: _topSectionBottomPadding,
            ),
            child: new Container(
              height: _topSectionHeight,
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      controller: _textController,
                      decoration: new InputDecoration(
                        hintText: "Enter a custom message",
                        errorText: _inputErrorText,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: new FlatButton(
                      child: new Text("Submit"),
                      onPressed: () {
                        setState(() {
                          _dataEthString = _textController.text;
                          _inputErrorText = null;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          new Expanded(
            child: new Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
//                    child: new QrImage(
//                      data: _dataString,
//                      onError: (ex) {
//                        print("[QR] ERROR - $ex");
//                        setState(() {
//                          _inputErrorText =
//                          "Error! Maybe your input value is too long?";
//                        });
//                      },
//                    ),

//                  new sample eth QR image
                    child: new QrImage(
                      data: _dataEthString,//_dataEthString,
                      onError: (ex) {
                        print("[QR] ERROR - $ex");
                        setState(() {
                          _inputErrorText =
                          "Error! Maybe your input value is too long?";
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
