/*

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_apps/device_apps.dart';
import 'dart:async';
import 'dart:convert';

void main() => runApp(MyApp());
var _firestore = Firestore.instance;


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListPage(),
    );
  }
}

class AppInfo {
  String documentID;
  String appDescription;
  String appIcon;
  String downloadUrl;
  String packageName;
  String packageVersion;
  List<String> appKeywords = new List<String>();

  AppInfo.fromSnapshot(DocumentSnapshot snapshot)
      : documentID = snapshot.documentID,
        appDescription = snapshot['appDescription'],
        appIcon = snapshot['appIcon'],
        downloadUrl = snapshot['downloadUrl'],
        packageName = snapshot['packageName'],
        packageVersion = snapshot['packageVersion'],
        appKeywords = List.from(snapshot['appKeywords']);

}




Stream<AppInfo> getInfo() {

  return Firestore.instance
      .collection("appList")
      .document("s6aSEeOilRgBzcBTdEjQ")
      .get()
      .then((snapshot) {
    try {
      return AppInfo.fromSnapshot(snapshot);
    } catch (e) {
      print(e);
      return null;
    }
  }).asStream();
}


class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}
class _ListPageState extends State<ListPage> {
  Future getApps() async {

    QuerySnapshot gn = await _firestore.collection("appList").getDocuments();
    print(gn.documents);
    return gn.documents;
  }


  @override
  Widget build(BuildContext context) {
    _firestore.settings(timestampsInSnapshotsEnabled: true);
    print("");
    return Container(
      child: FutureBuilder(
        future: getApps(),
        builder: (_, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("Loading"),
            );
          } else {



            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (_, index) {
                  return Container(
                      child: Column(
                        children: <Widget>[
                          Text(snapshot.data[index].data["packageName"]),
                          Image.network(snapshot.data[index].data["appIcon"]),

                        ],
                      ));
                });
          }
        },
      ),
    );
  }
}

*/