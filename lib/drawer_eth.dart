//import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'secondclass.dart';
//import 'firstclass.dart';
//import 'firebaseFlutt.dart';
//import 'text_form_field_data.dart';
//
//String _kAsset0 = 'assets/etceth-asia.jpg';
//String _kAsset1 = 'assets/ethBullet.png';
//String _kAsset2 = 'assets/etcBullet.png';
//String _kAsset3 = 'assets/ethGreenHelp.png';
//String _kAsset4 = 'assets/duIcon.png';
//
//String bm = 'bite me now';
//
//void _launchURL() async {
//  const url = 'https://flutter.io';
//  if (await canLaunch(url)) {
//    await launch(url);
//  } else {
//    throw 'Could not launch $url';
//  }
//}
//
//void _onGo() async {
//  const url = 'https://golang.org';
//  if (await canLaunch(url)) {
//    await launch(url);
//  } else {
//    throw 'Could not launch $url';
//  }
//}
//
//Widget DrawerEth(BuildContext, context) {
//  new ListView(
////remove the padding
//    padding: EdgeInsets.zero,
//    children: <Widget>[
//      new DrawerHeader(
////              currentAccountPicture: const CircleAvatar(
////                backgroundImage: const AssetImage(
////                  _kAsset0,
////                  package: _kGalleryAssetsPackage,
////                ),
////              ),
//        decoration: new BoxDecoration(
//// child: new Text('Drawer Headder what?'),
//          shape: BoxShape.circle,
//          color: Colors.green,
//          image: new DecorationImage(
//            image: new AssetImage(_kAsset2),
//          ),
//        ),
//        child: Text('wallet drawer||Widget'),
//      ),
////                new ListTile(
////                    leading: const Icon(Icons.add),
////                    title: new Text('item a 1Photos Barscan'),
////                    onTap: () {
////                      Navigator.pop(
////                          context); //lose app contro? pops back to prev page?
////                    }),
//      new ListTile(
//          leading: const Icon(Icons.android),
//          title: new Text('itam a 2too - golang'),
//          onTap: () async {
//            const url = 'https://golang.org';
//            if (await canLaunch(url)) {
//              await launch(url);
//            } else {
//              throw 'Could not launch $url';
//            }
//          }),
//      new ListTile(
//        leading: const Icon(Icons.backup),
//        title: new Text('Golang link'),
//        onTap: _onGo,
//      ),
//      new ListTile(
//          leading: const Icon(Icons.accessibility),
//          title: new Text('item 4 mvaigator 2nd screen'),
//          onTap: () {
//            Navigator.push(
//              context,
//              new MaterialPageRoute(builder: (context) => new SecondScreen()),
//            );
//          }),
//      new ListTile(
//          leading: const Icon(Icons.android),
//          title: new Text('page 5 1st Scre'),
//          onTap: () {
//            Navigator.push(context,
//                MaterialPageRoute(builder: (context) => new FirstScreen()));
//          }),
//      new ListTile(
//          leading: const Icon(Icons.message),
//          title: new Text('firebase chat'),
//          onTap: () {
//            Navigator.push(context,
//                MaterialPageRoute(builder: (context) => new BabyNames()));
//          }),
//      new ListTile(
//          leading: const Icon(Icons.brightness_5),
//          title: new Text('theme dark 2nd scre'),
//          onTap: () {
//            Navigator.push(context,
//                MaterialPageRoute(builder: (context) => new SecondScreen()));
//          }),
//      new ListTile(
//          leading: const Icon(Icons.brightness_7),
//          title: new Text('theme light  2nd scr'),
//          onTap: () {
//            Navigator.push(context,
//                MaterialPageRoute(builder: (context) => new SecondScreen()));
//          }),
//      new ListTile(
//          leading: const Icon(Icons.text_fields),
//          title: new Text('add dataForm Text'),
//          onTap: () {
//            Navigator.push(
//                context,
//                MaterialPageRoute(
//                    builder: (context) => new TextFormFieldDemo()));
//          }),
//    ],
//  );
//}
