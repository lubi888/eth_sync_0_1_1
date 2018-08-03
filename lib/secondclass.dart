import 'package:flutter/material.dart';
import 'eth_sync.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),

      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            //Navigator.pop(context); //this is simple return to drawer
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new EthSyncPage()),
            );
          },
          child: new Text('Go back to ethSync!'),
        ),
      ),
    );
  }
}
