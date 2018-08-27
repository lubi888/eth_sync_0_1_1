import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'secondclass.dart';
import 'firstclass.dart';
import 'firebaseFlutt.dart';
import 'snackbar.dart';
import 'text_form_field_data.dart';
import 'pesto.dart';
import 'drawer_demo.dart';
import 'grid_list.dart';
import 'qr_ethsync.dart';
import 'qr_mobile.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

const String words5 =
    "\u03BB \tgreek lambda \n\u1688 \togham tinne \n\u304B \tjapanese ka \n\u4E07 \tcjk ideograph 10,000"
    "\n\u4DC1 \tyijing i ching \n\u1300 \tethiopic symbol \n\u{13080} \tegyptian eye";

const String ethText1 = "    Hello and Welcome to ethereum sync. This app aims to provide the information needed to "
    "successfully intall and then synchronise your computer with the Ethereum Blockchian."
    "\n\t    We will be discussing some the main concepts of the blockchain so that you will have an overview of the "
    "technologies envolved."
    "\n\t    We will also be going over the ways to install and download the ethereum blockchain to full synchronization."
    "\n\t    Photos and screenshots will be used to provide glimpses of Ethereum in action."
    "\n\n";

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
  String _kAsset0 = 'assets/etceth-asia.jpg';
  String _kAsset1 = 'assets/ethBullet.png';
  String _kAsset2 = 'assets/etcBullet.png';
  String _kAsset3 = 'assets/ethGreenHelp.png';
  String _kAsset4 = 'assets/duIcon.png';
  String bm = 'bite me now';

  void _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
        length: 4,
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
                        child: const Text('enum, Working a lot harder'),
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
                      const PopupMenuDivider(),
                      const PopupMenuItem(
                        child: Icon(Icons.link),
                      ),
                      const PopupMenuItem(
                          child: const Icon(Icons.home),
                      ),
                      const PopupMenuItem(
                        child: const Text('ethereum website'),
                      ),
                      const PopupMenuItem(
                        child: const Text('ethereum reddit'),
                      ),
                      const PopupMenuItem(
                        child: const Text('ethereum gitter'),
                      ),
                      const PopupMenuItem(
                        child: const Text('ethSync website'),
                      ),
                      const PopupMenuDivider(),
                      const PopupMenuItem(
                        child: Icon(Icons.settings),
                      ),
                      const PopupMenuItem(
                        child: const Text('Settings'),
                        
                      ),
                      const PopupMenuItem(
                        child: const Text('Theme Light'),
                      ),
                      const PopupMenuItem(
                        child: const Text('Theme Dark'),
                      ),
                      const PopupMenuDivider(),
                      const PopupMenuItem(
                        child: const Text('About'),
                      ),
                      const PopupMenuItem(
                        child: const Text('Contact'),
                      ),
                      const PopupMenuItem(
                        child: const Text('Report Errors & Bugs'),
                      ),
                      const PopupMenuDivider(),
                      const PopupMenuItem(
                        child: Icon(Icons.language),
                      ),
                      const PopupMenuItem(
                        child: const Text('English: EN'),
                      ),
                      const PopupMenuItem(
                        child: const Text('French : Francais : FR'),
                      ),
                      const PopupMenuItem(
                        child: const Text('German : Deutsch : DE'),
                      ),
                      const PopupMenuItem(
                        child: const Text('Italian : Italiano : IT'),
                      ),
                      const PopupMenuItem(
                        child: const Text('Spanish : Espanol : ES'),
                      ),
                      const PopupMenuItem(
                        child: const Text('Japanese : Nihongo : JP'),
                      ),
                      const PopupMenuItem(
                        child: const Text('Chinese : Mandarin : CN-north'),
                      ),
                      const PopupMenuItem(
                        child: const Text('Chinese : Cantonese : CN-south'),
                      ),
                      const PopupMenuDivider(),
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
                  leading: const Icon(Icons.launch),
                  title: new Text('Etherum website'),
                  onTap: _onEthWeb,
                ),
                new ListTile(
                  leading: const Icon(Icons.launch),
                  title: new Text('ethSync.com'),
                  onTap: _onLubiEthWeb,
                ),
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
                          fontStyle: FontStyle.italic,
                          color: Colors.yellowAccent),
                    ),
                    trailing: const Icon(
                      Icons.mail,
                      color: Colors.greenAccent,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new BabyNames()));
                    }),
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
                          fontStyle: FontStyle.italic,
                          color: Colors.blueAccent),
                    ),
                    trailing: const Icon(
                      Icons.mail,
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
                    trailing: const Icon(Icons.person_add,
                        color: Colors.purpleAccent),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new DrawerDemo()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: new Text('photos grid list view, photo library'),
                    onTap: () async {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new GridListDemo()),
                      );
                    }),
                new ListTile(
                    leading: const Icon(Icons.person_outline),
                    title:
                        new Text('register, add data: Name, email, ethAddress'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new TextFormFieldDemo()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.android),
                    title: new Text('1st page'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new FirstScreen()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.android),
                    title: new Text('2nd page'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new SecondScreen()));
                    }),
                new ListTile(
                    leading: const Icon(Icons.accessibility),
                    title: new Text('navigator x screen'),
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondScreen()),
                      );
                    }),
                new ListTile(
                    leading: const Icon(Icons.accessibility),
                    title: new Text('navigator x screen'),
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondScreen()),
                      );
                    }),
                new ListTile(
                    leading: const Icon(Icons.accessibility),
                    title: new Text('navigator x screen'),
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondScreen()),
                      );
                    }),
                new ListTile(
                    leading: const Icon(Icons.accessibility),
                    title: new Text('navigator x screen'),
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondScreen()),
                      );
                    }),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              //Tab 1
              new Scrollbar(
                //viewportBuilder: AxisDirection.down,
                child: new ListView(
                  children: <Widget>[
                    new Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: new Text(ethText1,
                      style: new TextStyle(
                        color: Colors.green.shade500,
                        fontStyle: FontStyle.italic,
                        fontSize: 18.0,
                      ),),
                    ),
//                    new TextField(
//                      decoration: new InputDecoration(
//                        //border: InputBorder.none,
//                        hintText: ("try some search?"),
//                      ),
//                    ),
//                    new RaisedButton(
//                      onPressed: () async {
//                        Navigator.push(
//                          context,
//                          new MaterialPageRoute(
//                              builder: (context) => new MainScreen()),
//                        );
//                      },
//                      child: new Text('Show QR help'),
//                    ),
//                    new RaisedButton(
//                      onPressed: () async {
//                        Navigator.push(
//                          context,
//                          new MaterialPageRoute(
//                              builder: (context) => new CameraApp()),
//                        );
//                      },
//                      child: new Text('Show QR Google Mobile vision'),
//                    ),
//                    new RaisedButton(
//                      onPressed: () async {
//                        Navigator.push(
//                          context,
//                          new MaterialPageRoute(
//                              builder: (context) => new Pesto()),
//                        );
//                      },
//                      child: new Text('Show pestoEthSync receipie homepage'),
//                    ),
//                    new RaisedButton(
//                      onPressed: () async {
//                        Navigator.push(
//                          context,
//                          new MaterialPageRoute(
//                              builder: (context) => new GridListDemo()),
//                        );
//                      },
//                      child: new Text('Show grid photos homepage'),
//                    ),
//                    new Container(
//                      width: 300.0,
//                      height: 300.0,
//                      decoration: new BoxDecoration(
//                        shape: BoxShape.rectangle,
//                        image: new DecorationImage(
//                          image: new AssetImage(_kAsset3),
//                        ),
//                      ),
//                    ),
//                    new RaisedButton(
//                      onPressed: () async {
//                        Navigator.push(
//                          context,
//                          new MaterialPageRoute(
//                              builder: (context) => new DrawerDemo()),
//                        );
//                      },
//                      child: new Text('Show drawer demo , sidebar'),
//                    ),
//                    new Container(
//                      width: 150.0,
//                      height: 150.0,
//                      decoration: new BoxDecoration(
//                        shape: BoxShape.circle,
//                        image: new DecorationImage(
//                          image: new AssetImage(_kAsset0),
//                        ),
//                      ),
//                    ),
//                    new Text("bite me"),
//                    new Text(
//                      bm,
//                    ),
//                    new RaisedButton(
//                      onPressed: _launchURL,
//                      child: new Text('Show FlutterDarts homepage'),
//                    ),
//                    new TextField(
//                      decoration: new InputDecoration(
//                        //border: InputBorder.none,
//                        hintText: ("try some search?"),
//                      ),
//                    ),
//                    new Container(
//                      width: 150.0,
//                      height: 150.0,
//                      decoration: new BoxDecoration(
//                        shape: BoxShape.circle,
//                        image: new DecorationImage(
//                          image: new AssetImage(_kAsset1),
//                        ),
//                      ),
//                    ),
//                    new FlatButton(
//                      padding: const EdgeInsets.only(top: 8.0),
//                      child: new Image.network(
//                        'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
//                      ),
//                      onPressed: _launchURL,
//                    ),
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
                      width: 50.0,
                      height: 50.0,
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

              //Tab 2
              new Scrollbar(
                child: new Container(
//                alignment: Alignment.center,
                  child: new ListView(
//                  new Padding(padding: EdgeInsets.all(20.0)),
                    children: <Widget>[
//                    new Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 30.0)),
                      new Container(
//                      padding: EdgeInsets.all(100.0),
                        constraints: new BoxConstraints(
                          maxHeight: 100.0,
                          maxWidth: 200.0,
                        ),
                        color: Colors.blueAccent,
                      ),
                      new Padding(padding: EdgeInsets.all(20.0)),
                      new Icon(
                        Icons.directions_railway,
                        color: Colors.yellowAccent,
                      ), //centered
                      new Text(
                        "add some live graphs\nhave more inputs?",
                        textAlign: TextAlign.center,
                      ),
                      new Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
                      new Container(
                        constraints: new BoxConstraints(
                          maxHeight: 100.0,
                          maxWidth: 200.0,
                        ),
                        color: Colors.redAccent,
                      ),
                      new Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
                      new Container(
                        constraints: new BoxConstraints(
                          maxHeight: 100.0,
                          maxWidth: 200.0,
                        ),
                        color: Colors.yellowAccent,
                      ),
                      new Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
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
              new Container(
                child: new Column(
                  children: <Widget>[
                    new Text(
                      "aegyptus",
                      style: new TextStyle(
                        color: Colors.green,
                        fontSize: 40.0,
                      ),
                    ),
                    new Text(
                      words5,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 25.0,
                        color: Colors.redAccent.shade200,
                      ),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: new BoxDecoration(
                  color: Colors.yellow.shade500,
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
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
