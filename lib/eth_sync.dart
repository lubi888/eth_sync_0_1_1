import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'secondclass.dart';
import 'firstclass.dart';
import 'firebaseFlutt.dart';
import 'snackbar.dart';
import 'text_form_field_data.dart';
import 'pesto.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

const String words5 =
    "\u03BB \tgreek lambda \n\u1688 \togham tinne \n\u304B \tjapanese ka \n\u4E07 \tcjk ideograph 10,000 "
    "\n\u4DC1 \tyijing i ching \n\u1300 \tethiopic symbol \n\u{13080} \tegyptian eye";

class EthSync extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ethSync",
//      style: new TextStyle(color: Colors.red)),
      theme: new ThemeData(
        primarySwatch: Colors.orange,
        buttonColor: Colors.red,
        textSelectionColor: Colors.orange,
        //primaryTextTheme: Colors.green,
        //fontFamily: FontStyle.italic,
        //buttonTheme: TextDecorationStyle.dotted,
      ),
      home: new EthSyncPage(),
    );
  }
}

class EthSyncPage extends StatefulWidget {
  EthSyncPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _EthSyncPageState createState() => new _EthSyncPageState();
}

class _EthSyncPageState extends State<EthSyncPage> {
  String _kAsset0 = 'assets/etceth-asia.jpg';
  String _kAsset1 = 'assets/ethBullet.png';
  String _kAsset2 = 'assets/etcBullet.png';
  String _kAsset3 = 'assets/ethGreenHelp.png';
  String _kAsset4 = 'assets/duIcon.png';

  String bm = 'bite me now';

//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }

  void _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _onGo() async {
    const url = 'https://golang.org';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _showSnackBox() {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new SnackBar()));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
      ),
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          //return new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(tabs: [
              new Tab(icon: new Icon(Icons.phone_android)),
              new Tab(icon: new Icon(Icons.directions_railway)),
              new Tab(icon: new Icon(Icons.search)),
            ]),
            actions: <Widget>[
              new Icon(Icons.search), //input before this?
              //Selected:

              new PopupMenuButton<WhyFarther>(
                //onSelected: (WhyFarther result) { setState(() { _selection = result; }); },
//                onSelected: (WhyFarther value) {
//                  setState(() {
////                    var _selection = value;
//                  });
//                },
                onSelected: selectedTile,
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<WhyFarther>>[
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: const Text('Working a lot harder'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.smarter,
                        child: const Text('Being a lot smarter'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: const Text('Being a self-starter'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.tradingCharter,
                        child:
                            const Text('Placed in charge of trading charter'),
                      ),
                      const PopupMenuItem(
                        child: const Text('whatever '),
                      )
                    ],
              )
            ],
          ), //
          drawer: new Drawer(
            child: new ListView(
              //remove the padding
              padding: EdgeInsets.zero,
              children: <Widget>[
                new DrawerHeader(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    image: new DecorationImage(
                      image: new AssetImage(_kAsset2),
                    ),
                  ),
                  child: Text('wallet drawer||Widget'),
                ),
                new ListTile(
                    leading: const Icon(Icons.android),
                    title: new Text('itam a 2too - ethSyc recip pesto'),
                    onTap: () async {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Pesto()),
                      );
                    }),
                new ListTile(
                  leading: const Icon(Icons.backup),
                  title: new Text('Golang link'),
                  onTap: _onGo,
                ),
                new ListTile(
                    leading: const Icon(Icons.accessibility),
                    title: new Text('item 4 mvaigator 2nd screen'),
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondScreen()),
                      );
                    }),
                new ListTile(
                    leading: const Icon(Icons.android),
                    title: new Text('page 5 1st Scre'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new FirstScreen()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.message),
                    title: new Text('firebase chat'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new BabyNames()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.brightness_5),
                    title: new Text('theme dark 2nd scre'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new SecondScreen()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.brightness_7),
                    title: new Text('theme light  2nd scr'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new SecondScreen()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.text_fields),
                    title: new Text('add dataForm Text'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new TextFormFieldDemo()));
                    }),
              ],
            ),
          ),

          body: new Scrollbar(
            //viewportBuilder: AxisDirection.down,
            child: new ListView(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                    //border: InputBorder.none,
                    hintText: ("try some search?"),
                  ),
                ),
                new RaisedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => new Pesto()),
                    );
                  },
                  child: new Text('Show pestoEthSync receipie homepage'),
                ),
                new Container(
                  width: 300.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                      image: new AssetImage(_kAsset3),
                    ),
                  ),
                ),
                new Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: new AssetImage(_kAsset0),
                    ),
                  ),
                ),
                new Text("bite me"),
                new Text(
                  bm,
                ),
                new RaisedButton(
                  onPressed: _launchURL,
                  child: new Text('Show FlutterDarts homepage'),
                ),
                new TextField(
                  decoration: new InputDecoration(
                    //border: InputBorder.none,
                    hintText: ("try some search?"),
                  ),
                ),
                new Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: new AssetImage(_kAsset1),
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new Image.network(
                    'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                  ),
                ),
                new Container(
                  width: 300.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                      image: new AssetImage(_kAsset3),
                    ),
                  ),
                ),
                new Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                      image: new AssetImage(_kAsset4),
                    ),
                  ),
                ),
                new RaisedButton(
                  onPressed: _showSnackBox,
                  child: new Text('Show snackbox homepage'),
                ),
                new Container(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        "aegyptus",
                      ),
                      new Text(
                        words5,
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontFamily: "Aegyptus", //"bln" "iching",
                          fontSize: 25.0,
                        ),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    color: Colors.yellow.shade500,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(5.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void selectedTile(WhyFarther value) {
//  setState(() {
//    num = value;
//  })
  }
}

class SnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SnackBar Demo',
      theme:
          new ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('SnackBar Demo'),
        ),
        body: new SnackBarPage(),
      ),
    );
  }
}
