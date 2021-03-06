import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'dart:async';
import 'secondclass.dart';
import 'firstclass.dart';
import 'firebaseFlutt.dart';
import 'snackbar.dart';
import 'text_form_field_data.dart';
import 'pesto.dart';
import 'drawer_demo.dart';
import 'grid_list.dart';
import 'qr_ethsync.dart';
import 'camera.dart';
import 'qr_mobile.dart';
import 'shareEthSync.dart';
import 'ethTxtStrings.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import './image_expand.dart';
import './oktoast.dart';
// import 'package:async/async.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
enum Commands { heroAndScholar, hurricaneCame }

class EthSync extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ethSync",
      theme: new ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.cyan[600],
        buttonColor: Colors.red,
        textSelectionColor: Colors.orange,
      ),
      home: new EthSyncPage(),
      debugShowCheckedModeBanner: false,
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
  final String _kAsset0 = 'assets/devcon1.png';
  final String _kAsset2 = 'assets/etcBullet.png';
  final String _kAsset3 = 'assets/ethGreenHelp.png';
  final String _kAsset4 = 'assets/duIcon.png';
  final String _kAsset5 = 'assets/gethTerm.png';
  final String _kAsset6 = 'assets/geth1win.png';
  String bm = 'bit now';
  // String x_url = "";
  // var _kTransparentImage = 'assets/duIcon.png';

  void _launchURL() async {
    const url = "https://flutter.io";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURLGithub() async {
    const url = "https://github.com";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // void _launchURLX(String x_url) async {
  //   const url= x_url;
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw "could not launch $url";
  //   }
  // }

//  void _onEthWeb() async {
//    const url = 'https://ethereum.org/';
//    if (await canLaunch(url)) {
//      await launch(url);
//    } else {
//      throw 'Could not launch $url';
//    }
//  }

//  void _onLubiEthWeb() async {
//    const url = 'https://linuxubiuitous.com/ethsync';
//    if (await canLaunch(url)) {
//      await launch(url);
//    } else {
//      throw 'Could not launch $url';
//    }
//  }

  void _showSnackBox() {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new SnackBar()));
  }

  void _shareEthSync() {
    final RenderBox box = context.findRenderObject();
    Share.share(textShareURL,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
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
          appBar: _appBar(),
          drawer: _drawer(context),
          bottomNavigationBar: _bottomNavBar(),
          body: TabBarView(
            children: [
              //Tab 1
              new Scrollbar(
                //viewportBuilder: AxisDirection.down,
                child: new ListView(
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.all(15.0),
                      width: 300.0,
                      height: 1300.0,
                      decoration: new BoxDecoration(
//                        shape: BoxShape.rectangle,
//                        color: Colors.yellow.shade500,
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                      ),
                      child: new Text(
                        ethTextIntro,
                        textAlign: TextAlign.right,
                        style: new TextStyle(
                          color: Colors.green.shade300,
                          fontStyle: FontStyle.italic,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    new RaisedButton(
                        child: new Text('Begin learning ethSync'),
                        padding: EdgeInsets.all(20.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new Pesto()));
                        }),
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
                      width: 75.0,
                      height: 75.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: new DecorationImage(
                          image: new AssetImage(_kAsset4),
                        ),
                      ),
                    ),
                    new RaisedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new QRMainScreen()),
                        );
                      },
                      child: new Text('Show QR beam'),
                    ),
                    new RaisedButton(
                      onPressed: _showSnackBox,
                      child: new Text('Show snackbox homepage'),
                    ),
                    new Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: new DecorationImage(
                          image: new AssetImage(_kAsset2),
                        ),
                      ),
                    ),
                    new Container(
                      child: new Column(
                        children: <Widget>[
                          new Text(
                            "fonts",
                          ),
                          new Text(
                            ethTextFonts,
                            textAlign: TextAlign.center,
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
                    new TextField(
                      decoration: new InputDecoration(
                        //border: InputBorder.none,
                        hintText: ("try some search?"),
                      ),
                    ),
                    new Checkbox(value: true, onChanged: (bool value) {}),
                    new Radio<int>(value: 0, groupValue: 0, onChanged: (_) {}),
                    new Switch(value: true, onChanged: (bool value) {}),
                    new RaisedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new QRMainScreen()),
                        );
                      },
                      child: new Text('Show QR help'),
                    ),
                    new ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new RaisedButton(
                          child: new RaisedButton(
                              child: const Text("raised buttn"),
                              onPressed: () {}),
                        ),
                        const RaisedButton(
                            child: const Text("disabled raised buttn2"),
                            onPressed: null),
                      ],
                    ),
                    new ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new FlatButton(
                          child: new RaisedButton(
                              child: const Text("flat buttn"),
                              color: Colors.redAccent,
                              onPressed: () {}),
                        ),
                        const FlatButton(
                            child: const Text("disabled flat buttn2"),
                            color: Colors.blueAccent,
                            onPressed: null),
                      ],
                    ),
                    new ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new OutlineButton(
                          child: new RaisedButton(
                              child: const Text("outlined buttn"),
                              color: Colors.redAccent,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                    new RaisedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new CameraExampleHome()),
                        );
                      },
                      child: new Text('Camera open'),
                    ),
                    new RaisedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => QRReader()),
                        );
                      },
                      child: new Text('Camera qr reader'),
                    ),
                    new RaisedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Pesto()),
                        );
                      },
                      child: new Text('Show pestoEthSync receipie homepage'),
                    ),
                    new RaisedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new GridListDemo()),
                        );
                      },
                      child: new Text('Show grid photos homepage'),
                    ),
                    new Container(
                      width: 200.0,
                      height: 250.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: new DecorationImage(
                          image: new AssetImage(_kAsset3),
                        ),
                      ),
                    ),
                    new RaisedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new DrawerDemo()),
                        );
                      },
                      child: new Text('Show drawer demo , sidebar'),
                    ),
                    new RaisedButton(
                      onPressed: _shareEthSync,
                      child: new Text('share this before now'),
                    ),
                    new RaisedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new ShareEthSync()),
                        );
                      },
                      child: new Text('share this next text page ++'),
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
                          image: new AssetImage(_kAsset2),
                        ),
                      ),
                    ),
                    // FlatButton(
                    //   child: Image.asset(_kAsset3),
                    //   onPressed: () async {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => EthsyncExpandImage(
                    //                 // String assetFile: _kAsset3,
                    //                 //  String imageUrl, heroTag, title;
                    //                 //  imageUrl = "www.yahoo.com",
                    //                 //  heroTag = "heroTag1",
                    //                 image: _kAsset3,
                    //                 title: "1st green page",
                    //               )),
                    //     );
                    //   },
                    // ),
                    // FlatButton(
                    //   child: Image.asset(_kAsset5),
                    //   onPressed: () async {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => EthsyncExpandImage(
                    //                 image: _kAsset5,
                    //                 title: "geth Terminator",
                    //               )),
                    //     );
                    //   },
                    // ),
                    // FlatButton(
                    //   child: Image.asset(_kAsset6),
                    //   onPressed: () async {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => EthsyncExpandImage(
                    //                 image: _kAsset6,
                    //                 title: "geth windows 10 cmdr",
                    //               )),
                    //     );
                    //   },
                    // ),
                    // FlatButton(
                    //   child: Image.asset(_kAsset0),
                    //   onPressed: () async {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => EthsyncExpandImage(
                    //                 image: _kAsset0,
                    //                 title: "2st expander",
                    //               )),
                    //     );
                    //   },
                    // ),
                    new FlatButton(
//                      padding: const EdgeInsets.only(top: 8.0),
                      child: new Image.network(
                        'https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true',
                        height: 300.0,
                        width: 300.0,
                      ),
                      onPressed: _launchURL,
                    ),
                    new FlatButton(
                      child: new Image.network(
                        'https://media.giphy.com/media/Y4OxQ9b9YxyuQi8Hgg/giphy.gif',
                        height: 200.0,
                        width: 200.0,
                      ),
                      onPressed: _launchURLGithub,
                    ),
//                    new FlatButton(
//                    child:
                    new Image.network(
                      'http://thecatapi.com/api/images/get?format=src&type=gif',
//                      height: 200.0,
//                      width: 200.0,
                    ),
//                      onPressed: _launchURLGithub,
//                    ),
                    Container(
                      // child: Text(
                      //   ethTextFounders,
                      //   textAlign: TextAlign.right,
                      //   style: new TextStyle(
                      //     color: Colors.red.shade800,
                      //     fontSize: 18.0,
                      //     fontStyle: FontStyle.italic,
                      //   ),
                      // ),
                      child: Linkify(
                        onOpen: (link) async {
                          if (await canLaunch(link.url)) {
                            await launch(link.url);
                          } else {
                            throw 'Could not launch $link';
                          }
                        },
                        humanize: true,
                        text: ethTextFounders,
                        textAlign: TextAlign.right,
                        style: new TextStyle(
                          color: Colors.red.shade800,
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                          //red txt on yell bg, helps blue links
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                      ),
                    ),
                    Container(
                      child: Linkify(
                        onOpen: (link) async {
                          if (await canLaunch(link.url)) {
                            await launch(link.url);
                          } else {
                            throw 'Could not launch $link';
                          }
                        },
                        text: ethTextTop5,
                        humanize: true,
                        textAlign: TextAlign.right,
                        style: new TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                        color: Colors.yellow.shade500,
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                      ),
                    ),

                    Container(
                      child: Linkify(
                        // onOpen: _onOpen,
                        onOpen: (link) async {
                          if (await canLaunch(link.url)) {
                            await launch(link.url);
                          } else {
                            throw 'Could not launch $link';
                          }
                        },
                        text: ethTextLinks,
                        humanize: true,
                        textAlign: TextAlign.right,
                        style: new TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                        color: Colors.red.shade500,
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                      ),
                    ),

                    Container(
                      child: Linkify(
                        onOpen: (link) async {
                          if (await canLaunch(link.url)) {
                            await launch(link.url);
                          } else {
                            throw 'Could not launch $link';
                          }
                        },
                        text: ethTextMiners,
                        humanize: true,
                        textAlign: TextAlign.right,
                        style: new TextStyle(
                          color: Colors.green.shade900,
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                        color: Colors.yellow.shade500,
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                      ),
                    ),
                  ],
                ),
              ),

              //Tab 2
              new Scrollbar(
                child: new Container(
//                alignment: Alignment.center,
                  child: new ListView(
//                  new Padding(padding: EdgeInsets.all(20.0)),
                    children: <Widget>[
                      new Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
                      new Text(
                        "check the net for live trades",
                        textAlign: TextAlign.center,
                      ),
                      new Container(
                        padding: EdgeInsets.all(100.0),
                        constraints: new BoxConstraints(
                          maxHeight: 100.0,
                          maxWidth: 200.0,
                        ),
                        color: Colors.blueAccent,
                      ),
                      new Icon(
                        Icons.directions_railway,
                        color: Colors.yellowAccent,
                      ), //centered
                      new Text(
                        "add some live graphs\nhave more inputs",
                        textAlign: TextAlign.center,
                      ),
                      new Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
                      new Text(
                        "Live eth, etc, btc, gold, silver, currency rates",
                        textAlign: TextAlign.center,
                      ),
                      new Container(
                        constraints: new BoxConstraints(
                          maxHeight: 100.0,
                          maxWidth: 200.0,
                        ),
                        color: Colors.redAccent,
                      ),
                      new Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
                      new Text(
                        "fx currency rates",
                        textAlign: TextAlign.center,
                      ),
                      new Container(
                        constraints: new BoxConstraints(
                          maxHeight: 100.0,
                          maxWidth: 200.0,
                        ),
                        color: Colors.yellowAccent,
                      ),
                      new Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
                      new Text(
                        "ERC20 Coin. I.C.O. Initial Coin Offerings",
                        textAlign: TextAlign.center,
                      ),
                      new Container(
                        constraints: new BoxConstraints(
                          maxHeight: 100.0,
                          maxWidth: 200.0,
                        ),
                        color: Colors.greenAccent,
                      ),
                      new Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 30.0)),
                    ],
                  ),
                ),
              ),

              //Tab 3
              new Scrollbar(
                child: new Container(
                  child: new ListView(
                    children: <Widget>[
                      new Text(
                        "fonts",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: Colors.green,
                          fontSize: 40.0,
                        ),
                      ),
                      new Text(
                        ethTextFonts,
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontSize: 25.0,
                          color: Colors.redAccent.shade200,
                        ),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    color: Colors.yellow.shade500,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(50.0)),
                  ),
                ),
              ),
            ],
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

Widget _appBar() {
  return new AppBar(
    bottom: new TabBar(tabs: [
      new Tab(icon: new Icon(Icons.home)),
      new Tab(icon: new Icon(Icons.graphic_eq)),
      new Tab(icon: new Icon(Icons.chat)),
    ]),
    actions: <Widget>[
      new Icon(Icons.search), //input before this?

      new PopupMenuButton<WhyFarther>(
        //onSelected: (WhyFarther result) { setState(() { _selection = result; }); },
//                onSelected: (WhyFarther value) {
//                  setState(() {
////                    var _selection = value;
//                  });
//                },
//  onSelected: selectedTile,
        itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
          PopupMenuItem<WhyFarther>(
            value: WhyFarther.harder,
            child: const Text('enum, Working a lot harder'),
          ),
          PopupMenuItem<WhyFarther>(
            value: WhyFarther.smarter,
            child: const Text('Being a lot smarter'),
          ),
          PopupMenuItem<WhyFarther>(
            value: WhyFarther.selfStarter,
            child: const Text('Being a self-starter'),
          ),
          PopupMenuItem<WhyFarther>(
            value: WhyFarther.tradingCharter,
            child: const Text('Placed in charge of trading charter'),
          ),
          const PopupMenuDivider(),
          PopupMenuItem(
            child: Icon(Icons.link),
          ),
          PopupMenuItem(
            child: const Icon(Icons.home),
          ),
          PopupMenuItem(
            child: const Text('ethereum website'),
            //https://www.ethereum.org/
          ),
          PopupMenuItem(
            // child: const Text(
            //     'ethereum reddit'), //https://www.reddit.com/r/ethereum/
            child: Linkify(
                onOpen: (link) async {
                  if (await canLaunch(link.url)) {
                    await launch(link.url);
                  } else {
                    throw 'Could not launch $link';
                  }
                },
                humanize: true,
                text: 'https://www.ethereum.org'),
          ),
          PopupMenuItem(
            child: Linkify(
                onOpen: (link) async {
                  if (await canLaunch(link.url)) {
                    await launch(link.url);
                  } else {
                    throw 'Could not launch $link';
                  }
                },
                humanize: true,
                text: 'https://ethereum.stackexchange.com/'),
          ),
          PopupMenuItem(
            child:
                const Text('ethereum gitter'), //https://gitter.im/ethereum/home
          ),
          PopupMenuItem(
            child: Linkify(
                onOpen: (link) async {
                  if (await canLaunch(link.url)) {
                    await launch(link.url);
                  } else {
                    throw 'Could not launch $link';
                  }
                },
                humanize: true,
                text: 'https://www.wikipedia.org/wiki/Ethereum/'),
          ),
          PopupMenuItem(
            child: Linkify(
                onOpen: (link) async {
                  if (await canLaunch(link.url)) {
                    await launch(link.url);
                  } else {
                    throw 'Could not launch $link';
                  }
                },
                humanize: true,
                text: 'https://gitter.im/ethereum/home'),
          ),
          PopupMenuItem(
            // child: const Text('ethSync website'),
            child: Linkify(
                onOpen: (link) async {
                  if (await canLaunch(link.url)) {
                    await launch(link.url);
                  } else {
                    throw 'Could not launch $link';
                  }
                },
                humanize: true,
                text: 'https://www.ethSync.org'),
          ),
          const PopupMenuDivider(),
          PopupMenuItem(
            child: Icon(Icons.settings),
          ),
          PopupMenuItem(
            child: const Text('Settings'),
          ),
          PopupMenuItem(
            child: const Text('Theme Light'),
          ),
          PopupMenuItem(
            child: const Text('Theme Dark'),
          ),
          const PopupMenuDivider(),
          PopupMenuItem(
            child: Icon(Icons.contact_mail),
          ),
          PopupMenuItem(
            child: const Text('About'),
          ),
          PopupMenuItem(
            child: const Text('Contact'),
          ),
          PopupMenuItem(
            child: const Text('Report Errors & Bugs'),
          ),
          const PopupMenuDivider(),
          PopupMenuItem(
            child: Icon(Icons.language),
          ),
          PopupMenuItem(
            // child: const Text('English: EN'),
            child: Linkify(
                onOpen: (link) async {
                  if (await canLaunch(link.url)) {
                    await launch(link.url);
                  } else {
                    throw 'Could not launch $link';
                  }
                },
                humanize: true,
                text: 'https://google.clom'),
          ),
          PopupMenuItem(
            child: const Text('French : Francais : FR'),
          ),
          PopupMenuItem(
            child: const Text('German : Deutsch : DE'),
          ),
          PopupMenuItem(
            child: const Text('Italian : Italiano : IT'),
          ),
          PopupMenuItem(
            child: const Text('Spanish : Espanol : ES'),
          ),
          PopupMenuItem(
            child: const Text('Japanese : Nihongo : JP'),
          ),
          PopupMenuItem(
            child: const Text('Chinese : Mandarin : CN-north'),
          ),
          PopupMenuItem(
            child: const Text('Chinese : Cantonese : CN-south'),
          ),
          const PopupMenuDivider(),
        ],
      )
    ],
  ); //
}

Widget _drawer(BuildContext context) {
  String _kAsset0 = 'assets/devcon1.png';

  void _onEthWeb() async {
    const url = 'https://ethereum.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _onLubiEthWeb() async {
    const url = 'https://linuxubiuitous.com/ethsync';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  return new Drawer(
    child: new ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        new DrawerHeader(
          decoration: new BoxDecoration(
            color: Colors.green,
            image: new DecorationImage(
              image: new AssetImage(_kAsset0),
            ),
          ),
          child: Text(
            'wallet || drawer widget',
            style: new TextStyle(
                fontStyle: FontStyle.italic, color: Colors.yellowAccent),
          ),
        ),
        new ListTile(
            leading: const Icon(
              Icons.school,
              color: Colors.orangeAccent,
            ),
            title: new Text('begin learning ethSync',
                style: TextStyle(color: Colors.orangeAccent)),
            subtitle: new Text(
              'proof of work||stake',
              style: new TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.blueAccent),
            ),
            trailing: const Icon(
              Icons.school,
              color: Colors.blueAccent,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new Pesto()));
            }),
        new ListTile(
            leading: const Icon(
              Icons.account_balance,
              color: Colors.redAccent,
            ),
            title: new Text(
              'add eth|etc address - acccount',
              style: new TextStyle(color: Colors.purpleAccent),
            ),
            subtitle: new Text(
              'personal firebase storage',
              style: new TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.redAccent),
            ),
            trailing: const Icon(Icons.add_alert, color: Colors.purpleAccent),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new DrawerDemo()));
            }),
        new ListTile(
            leading: const Icon(
              Icons.face,
              color: Colors.yellowAccent,
            ),
            title: new Text(
              'firebase chat',
              style: TextStyle(color: Colors.greenAccent),
            ),
            subtitle: new Text(
              'experimental firebase hookup',
              style: new TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.yellowAccent),
            ),
            trailing: const Icon(
              Icons.mail,
              color: Colors.greenAccent,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FlutterFirease()));
            }),
        new ListTile(
            leading: const Icon(
              Icons.photo_album,
              color: Colors.orangeAccent,
            ),
            title: new Text(
              'photos grid list view',
              style: new TextStyle(color: Colors.orangeAccent),
            ),
            subtitle: new Text(
              'photo gallery',
              style: new TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.blueAccent),
            ),
            trailing: const Icon(Icons.add_a_photo, color: Colors.blueAccent),
            onTap: () async {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new GridListDemo()),
              );
            }),
        new ListTile(
            leading: const Icon(
              Icons.person_outline,
              color: Colors.yellowAccent,
            ),
            title: new Text(
              'register: add name, email, ethAddress',
              style: new TextStyle(color: Colors.yellowAccent),
            ),
            subtitle: new Text(
              'eth, etc, btc, addresses',
              style: new TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.greenAccent),
            ),
            trailing: const Icon(Icons.person_add, color: Colors.greenAccent),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new TextFormFieldDemo()));
            }),
        new ListTile(
            leading: const Icon(
              Icons.send,
              color: Colors.redAccent,
            ),
            title: new Text(
              'show|receive eth|etc address',
              style: new TextStyle(color: Colors.purpleAccent),
            ),
            subtitle: new Text(
              '\'face to face\' QR codes',
              style: new TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.redAccent),
            ),
            trailing: const Icon(Icons.send, color: Colors.purpleAccent),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new QRMainScreen()));
            }),
        new ListTile(
            leading: const Icon(
              Icons.add_a_photo,
              color: Colors.orangeAccent,
            ),
            title: new Text(
              'capture eth|etc addresss',
              style: new TextStyle(color: Colors.orangeAccent),
            ),
            subtitle: new Text(
              'launch camera and take QR addresses',
              style: new TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.blueAccent),
            ),
            trailing:
                const Icon(Icons.camera_enhance, color: Colors.yellowAccent),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => QRReader()));
            }),
        new ListTile(
          leading: const Icon(Icons.launch, color: Colors.greenAccent),
          title: new Text(
            'Etherum website',
            style: new TextStyle(
                fontStyle: FontStyle.italic, color: Colors.greenAccent),
          ),
          trailing: const Icon(Icons.launch, color: Colors.greenAccent),
          onTap: _onEthWeb,
        ),
        new ListTile(
          leading: const Icon(Icons.launch, color: Colors.purpleAccent),
          title: new Text(
            'ethSync.com',
            style: new TextStyle(
                fontStyle: FontStyle.italic, color: Colors.purpleAccent),
          ),
          trailing: const Icon(Icons.bookmark, color: Colors.orangeAccent),
          onTap: _onLubiEthWeb,
        ),
        new ListTile(
            leading: const Icon(Icons.android),
            title: new Text('1st page --------'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new FirstScreen()));
            }),
        new ListTile(
            leading: const Icon(Icons.android),
            title: new Text('2nd page ----------'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new SecondScreen()));
            }),
        new ListTile(
            leading: const Icon(
              Icons.accessibility,
              color: Colors.pinkAccent,
            ),
            trailing: const Icon(
              Icons.share,
              color: Colors.pinkAccent,
            ),
            title: new Text(
              'share this app',
              style: TextStyle(color: Colors.yellowAccent),
            ),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new ShareEthSync()),
              );
            }),
        new ListTile(
            leading: const Icon(Icons.accessibility),
            title: new Text('navigator x screen'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new SecondScreen()),
              );
            }),
        new ListTile(
            leading: const Icon(Icons.accessibility),
            title: new Text('oktoastie'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new EthSyncOKToast()),
              );
            }),
      ],
    ),
  );
}

Widget _bottomNavBar() {
  return new BottomNavigationBar(items: [
    new BottomNavigationBarItem(
        icon: new Icon(Icons.add_alert), title: new Text("alert me")),
    new BottomNavigationBarItem(
        icon: new Icon(Icons.shopping_basket), title: new Text("shoppig")),
    new BottomNavigationBarItem(
        icon: new Icon(Icons.polymer), title: new Text("polymer")),
  ]);
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

// Future<void> _onOpen(LinkableElement link) async {
//   if (await canLaunch(link.url)) {
//     await launch(link.url);
//   } else {
//     throw 'Could not launch $link';
//   }
// }
