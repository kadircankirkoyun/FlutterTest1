import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'models.dart';

class DatabaseService {
  final Firestore _db = Firestore.instance;
  Stream<App> streamApp(id) {
    return _db
        .collection('appList')
        .document(id)
        .snapshots()
        .map((snap) => App.fromMap(snap.data));
  }
/*
  Stream<List<App>> streamApps()  {

    var ref = _db.collection('appList');

    return ref.snapshots().map((list) =>
        list.documents.map((doc) => App.fromFirestore(doc)).toList());
  }
  */

  Future<App> getApp(String id) async {
    var snap = await _db.collection('appList').document(id).get();

    return App.fromMap(snap.data);
  }



}