import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// void FlutterFirebase() => runApp(MyApp());

final dummySnapshot = [
 {"name": "Filip", "votes": 15},
 {"name": "Abraham", "votes": 14},
 {"name": "Richard", "votes": 11},
 {"name": "Ike", "votes": 10},
 {"name": "Justin", "votes": 1},
];

class FlutterFirease extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Baby Names',
     home: MyHomePage(),
   );
 }
}

class MyHomePage extends StatefulWidget {
 @override
 _MyHomePageState createState() {
   return _MyHomePageState();
 }
}

class _MyHomePageState extends State<MyHomePage> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Baby Name Votes',
     textAlign: TextAlign.center,)),
     body: _buildBody(context),
   );
 }

 Widget _buildBody(BuildContext context) {
   // TODO: get actual snapshot from Cloud Firestore
   return _buildList(context, dummySnapshot);
 }

 Widget _buildList(BuildContext context, List<Map> snapshot) {
   return ListView(
     padding: const EdgeInsets.only(top: 20.0),
     children: snapshot.map((data) => _buildListItem(context, data)).toList(),
   );
 }

 Widget _buildListItem(BuildContext context, Map data) {
   final record = Record.fromMap(data);

   return Padding(
     key: ValueKey(record.name),
     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
     child: Container(
       decoration: BoxDecoration(
         border: Border.all(color: Colors.grey),
         borderRadius: BorderRadius.circular(5.0),
       ),
       child: ListTile(
         title: Text(record.name),
         trailing: Text(record.votes.toString()),
         onTap: () => print(record),
       ),
     ),
   );
 }
}

class Record {
 final String name;
 final int votes;
 final DocumentReference reference;

 Record.fromMap(Map<String, dynamic> map, {this.reference})
     : assert(map['name'] != null),
       assert(map['votes'] != null),
       name = map['name'],
       votes = map['votes'];

 Record.fromSnapshot(DocumentSnapshot snapshot)
     : this.fromMap(snapshot.data, reference: snapshot.reference);

 @override
 String toString() => "Record<$name:$votes>";
}



// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class BabyNames extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'babbbbbbys firebase & firestore',
//       theme: new ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: new MyHomePage(title: 'this is an experimental online chat and BBS bulletin board system.'),
//     );
//   }
// }
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;
//   Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
//     return new ListTile(
//       key: new ValueKey(document.documentID),
//       title: new Container(
//         decoration: new BoxDecoration(
//           border: new Border.all(color: const Color(0x80000000)),
//           borderRadius: new BorderRadius.circular(5.0),
//         ),
//         padding: const EdgeInsets.all(10.0),
//         child: new Row(
//           children: <Widget>[
//             new Expanded(
//               child: new Text(document['name']),
//             ),
//             new Text(
//               document['votes'].toString(),
//             ),
//           ],
//         ),
//       ),
//       onTap: () => Firestore.instance.runTransaction((transaction) async {
//         DocumentSnapshot freshSnap =
//         await transaction.get(document.reference);
//         await transaction.update(
//             freshSnap.reference, {'votes': freshSnap['votes'] + 1});
//       }),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(title: new Text(title)),
//       body: new StreamBuilder(
//           stream: Firestore.instance.collection('baby').snapshots(),
//           builder: (context, snapshot) {
//             if (!snapshot.hasData) return const Text('Loading....4 u now..');
//             return new ListView.builder(
//               itemCount: snapshot.data.documents.length,
//               padding: const EdgeInsets.only(top: 10.0),
//               itemExtent: 55.0,
//               itemBuilder: (context, index) =>
//                   _buildListItem(context, snapshot.data.documents[index]),
//             );
//           }),
//     );
//   }
// }
