import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'secondclass.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //void lycra

    void _lycra() async {
      const url = 'https://golang.org';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    //String _kAsset1 = 'assets/_kasset3.jpg';
    //'assets/etceth-asia.jpg'; //'packages/flutter_gallery_assets/shrine/vendors/zach.jpg';
    //String _kAsset1 = 'assets/ethBullet.png';
    String _kAsset3 = 'assets/ethGreenHelp.png';

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Center(
//        new Text(
//            'Hello, $_name! hello',
//          textAlign: TextAlign.center,
//          overflow: TextOverflow.ellipsis,
//          style: new TextStyle(fontWeight: FontStyle.italic),
//
//        ),

//        child: new RaisedButton(
//          child: new Text('Launch new 2nd screen'),
//          onPressed: () {
//            Navigator.push(
//              context,
//              new MaterialPageRoute(builder: (context) => new SecondScreen()),
//            );
//          },
//        ),
        child: new ListView(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Please enter a search term'),
            ),
            new RaisedButton(onPressed: _lycra, child: new Text("try this")),
            new Container(
              width: 150.0,
              height: 200.0,
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                image: new DecorationImage(
                  image: new AssetImage(_kAsset3),
                ),
              ),
            ),

            new RaisedButton(
                child: new Text('whatever'),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SecondScreen()));
                }
              //        child: new RaisedButton(
//          child: new Text('Launch new 2nd screen'),
//          onPressed: () {
//            Navigator.push(
//              context,
//              new MaterialPageRoute(builder: (context) => new SecondScreen()),
//            );
//          },
            )
          ],
        ),
      ),
    );
  }
}
