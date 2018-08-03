import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BabyNames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'babbbbbbys',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'baby names votes'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    return new ListTile(
      key: new ValueKey(document.documentID),
      title: new Container(
        decoration: new BoxDecoration(
          border: new Border.all(color: const Color(0x80000000)),
          borderRadius: new BorderRadius.circular(5.0),
        ),
        padding: const EdgeInsets.all(10.0),
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new Text(document['name']),
            ),
            new Text(
              document['votes'].toString(),
            ),
          ],
        ),
      ),
      onTap: () => Firestore.instance.runTransaction((transaction) async {
        DocumentSnapshot freshSnap =
        await transaction.get(document.reference);
        await transaction.update(
            freshSnap.reference, {'votes': freshSnap['votes'] + 1});
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(title)),
      body: new StreamBuilder(
          stream: Firestore.instance.collection('baby').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading....4 u now..');
            return new ListView.builder(
              itemCount: snapshot.data.documents.length,
              padding: const EdgeInsets.only(top: 10.0),
              itemExtent: 55.0,
              itemBuilder: (context, index) =>
                  _buildListItem(context, snapshot.data.documents[index]),
            );
          }),
    );
  }
}
