import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'secondclass.dart';
import 'firstclass.dart';
//import 'firebaseFlutt.dart';
import 'snackbar.dart';
import 'text_form_field_data.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class EthSync extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ethSync",
//      style: new TextStyle(color: Colors.red)),
      theme: new ThemeData(
        //ThemeData.dark
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.,
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        buttonColor: Colors.red,
        textSelectionColor: Colors.orange,
        //primaryTextTheme: Colors.green,
        //primaryTextTheme: Colors.green,
        //fontFamily: FontStyle.italic,
        //buttonTheme: TextDecorationStyle.dotted,
      ),
      home: new EthSyncPage(), //title: 'Flutter ttttt Demo Home Page'),
      // home: new FirstScreen(),
    );
  }
}

class EthSyncPage extends StatefulWidget {
  EthSyncPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _EthSyncPageState createState() => new _EthSyncPageState();
}

class _EthSyncPageState extends State<EthSyncPage> {
  //int _counter = 0;

  String _kAsset0 =
      'assets/etceth-asia.jpg'; //'packages/flutter_gallery_assets/shrine/vendors/zach.jpg';
  String _kAsset1 =
      'assets/ethBullet.png'; //'packages/flutter_gallery_assets/shrine/vendors/16c477b.jpg';
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
//    const String _kAsset0 = '/assets/etceth-asia.jpg';              //'packages/flutter_gallery_assets/shrine/vendors/zach.jpg';
    return new MaterialApp(
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console wher/e you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.,
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
                    child: const Text('whatever'),
                  )

//                          child: ListTile(
//                            leading: Icon(Icons.search, color: getAccentColor()),
//                            title:
//                            Text(SEARCH, style: TextStyle(color: getAccentColor())),
//                            onTap: () {
//                              Navigator.of(context).pop();
//                              showSearchDialog();
//                            },
//                          )),

                ],
              )
//              new PopupMenuButton(
//                //<GridDemoTileStyle>
//                //onSelected: changeDemoStyle,
//                //itemBuilder: (BuildContext context) => <PopupMenuItem<GridDemoTileStyle>>[
//                itemBuilder: (BuildContext context) => <PopupMenuItem>[
//                      const PopupMenuItem(
//                          //value: TabsDemoStyle.iconsAndText,
//                          child: const Text('Icons and text')),
//                      const PopupMenuItem(
//                          //value: TabsDemoStyle.iconsOnly,
//                          child: const Text('Icons only')),
//                      const PopupMenuItem(
//                          //value: TabsDemoStyle.textOnly,
//                          child: const Text('Text only')),
//                      const CheckedPopupMenuItem(
//                        child: const Text('checked'),
//                      ),
//                    ],
//              ),
            ],
          ), //
          drawer: new Drawer(
            child: new ListView(
              //remove the padding
              padding: EdgeInsets.zero,
              children: <Widget>[
                new DrawerHeader(
//              currentAccountPicture: const CircleAvatar(
//                backgroundImage: const AssetImage(
//                  _kAsset0,
//                  package: _kGalleryAssetsPackage,
//                ),
//              ),
                  decoration: new BoxDecoration(
                    // child: new Text('Drawer Headder what?'),
                    shape: BoxShape.circle,
                    color: Colors.green,
                    image: new DecorationImage(
                      image: new AssetImage(_kAsset2),
                    ),
                  ),
                  child: Text('wallet drawer||Widget'),
                ),
                new ListTile(
                    leading: const Icon(Icons.add),
                    title: new Text('item a 1Photos Barscan'),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                new ListTile(
                    leading: const Icon(Icons.android),
                    title: new Text('itam a 2too'),
                    //                   onTap: () {
//                  //_showNotImplementedMessage,
//                  //update the app and go to link
//                  Navigator.pop(context);
//                  //Navigator.of(context).pop();
                    //                },
                    onTap: () async {
                      const url = 'https://golang.org';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
                new ListTile(
                  leading: const Icon(Icons.backup),
                  title: new Text('Golang link'),
                  onTap: _onGo,
                  //      new Text('Show Flutter homepage'),
//                launch('https://github.com/flutter/flutter/issues/new');
                ),
                new ListTile(
                    leading: const Icon(Icons.accessibility),
                    title: new Text('item 4 mvaigator'),
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondScreen()),
                      );
                    }),
                new ListTile(
                    leading: const Icon(Icons.android),
                    title: new Text('page 5'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new FirstScreen()));
                    }),
//                new ListTile(
//                    leading: const Icon(Icons.message),
//                    title: new Text('firebase chat'),
//                    onTap: () {
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => new baby_names()));
//                    }),
                new ListTile(
                    leading: const Icon(Icons.brightness_5),
                    title: new Text('theme dark'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new SecondScreen()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.brightness_7),
                    title: new Text('theme light'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new SecondScreen()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.text_fields),
                    title: new Text('add data'),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => new TextFormFieldDemo()));
                    }),
              ],
            ),
          ),

          body: new Scrollbar(
            //viewportBuilder: AxisDirection.down,
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.

//            child: new RaisedButton(
//              onPressed: () {
//                final snackBar = new SnackBar(
//                  content: new Text('Yay! A SnackBar!'),
//                  action: new SnackBarAction(
//                    label: 'Undo',
//                    onPressed: () {
//                      // Some code to undo the change!
//                    },
//                  ),
//                );
//
//                // Find the Scaffold in the Widget tree and use it to show a SnackBar!
//                Scaffold.of(context).showSnackBar(snackBar);
//              },
//              child: new Text('Show SnackBar'),
//            ),

            child: new ListView(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                    //border: InputBorder.none,
                    hintText: ("try some search?"),
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
//                child: new Text('Tap here to open the drawer\Check balances\nCopy addresses'
//                    '\n\n\nUse Firebase for OAuth &&||syncing?',
//                  style: Theme.of(context).textTheme.subhead,
//                ),
                  child: new Image.network(
//                  onPressed: _launchURL,
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
              ],
            ),
          ),
//// This trailing   comma makes auto-formatting nicer for build methods.
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
