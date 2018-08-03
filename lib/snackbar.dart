import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SnackBarPage extends StatelessWidget {
  void _launchURL2() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
        onPressed: () {
          final snackBar = new SnackBar(
            content: new Text('Yay! A big little snackbar!'),
            action: new SnackBarAction(
              label: 'Launch Flutter.io',
              onPressed: () {
                // Some code to undo the change!
                _launchURL2();
              },
            ),
          );

          // Find the Scaffold in the Widget tree and use it to show a SnackBar!
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: new Text('Show SnackBar'),
      ),
    );
  }
}
