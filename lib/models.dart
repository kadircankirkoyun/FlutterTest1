import 'package:cloud_firestore/cloud_firestore.dart';



class App {
  final String id;
  final String appDescription;
  final String appIcon;
  final String appName;
  final String downloadUrl;
  final String packageName;
  final String packageVersion;
  final List<String> appKeywords;

  App({ this.id, this.appDescription, this.appIcon, this.appName, this.downloadUrl, this.packageName, this.packageVersion, this.appKeywords });


  factory App.fromMap(Map data) {
    data = data ?? {};
    return App(
        appDescription: data['appDescription'] ?? '',
        appIcon: data['appIcon'] ?? '',
        appName: data['appName'] ?? '',
        downloadUrl: data['downloadUrl'] ?? '',
        packageName: data['packageName'] ?? '',
        packageVersion: data['packageVersion'] ?? '',
        appKeywords: data['appKeywords'] ?? ''

    );
  }

}