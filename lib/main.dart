import 'package:flutter/material.dart';
import 'components.dart';
import 'db.dart';
import 'models.dart';

import 'package:provider/provider.dart';

final db = DatabaseService();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppList(),
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
      body: AppList(),
    );
  }
}

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return AppList();
  }
}

class AppScreen extends StatelessWidget {
  final db = DatabaseService();
  var data = App;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
Text(""),

]);



         }
}


class AppList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFD916),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 1.5),
                  child: Icon(
                    Icons.shop,
                    size: 60.0,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 30.0),
                  child: Text('Market',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MuseoSans',
                        shadows: [
                          Shadow(
// bottomLeft
                            offset: Offset(1.5, 1.5),
                            color: Colors.yellowAccent,
                          ),
                        ],
                      )),
                )
              ],
            ),
            iconTheme: IconThemeData(size: 30.0),
          ),
        ),
        body: SafeArea(
          child: MarketListPage(),
        ),
      ),
    );
  }
}

/*
      child: ListView(
        children: apps.map((app) {
          return Container(
            child: Text(app.appName),
          );
        }).toList(),
      ),
    );

       */

class MarketListPage extends StatefulWidget {
  @override
  _MarketListPageState createState() => _MarketListPageState();
}

class _MarketListPageState extends State<MarketListPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 40.0, left: 40.0, bottom: 10.0, top: 10.0),
      child: Container(
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 0.2, // has the effect of extending the shadow
              offset: Offset(
                0.0, // horizontal, move right 10
                8.0, // vertical, move down 10
              ),
            )
          ],
          color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        margin: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 15.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  StreamProvider<App>.value(

            ),
                  AppView(),
                  AppView(),
                  AppView(),
                  AppView(),
                  AppView(),
                  AppView(),
                  AppView(),
                  AppView(),
                  AppView(),
                  AppView(),
                ]),
          ),
        ),
      ),
    );
  }
}
