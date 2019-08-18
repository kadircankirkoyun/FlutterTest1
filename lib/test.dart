/*

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
    return Column(children: <Widget>[
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

class MarketListPage extends StatefulWidget {
  @override
  MarketListPageState createState() => MarketListPageState();
}

class MarketListPageState extends State<MarketListPage> {
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
                  StreamBuilder<App>(
                    stream: db.streamApp('Cy7kUgWgj9HNAUdxhFf3'),
                    builder: (context, snapshot) {


                        return Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xFFF7F7F7), width: 2.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: AppColoredButton(
                                      backColor: Colors.red,
                                      image: app.appIcon,
                                      onPress: () {},
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 20.0),
                                          child: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 34.0, bottom: 3.3),
                                                child: Container(
                                                  //Text nedenini bilmediğim bir şekilde sağa kaydı düzeltmek için container a alıp pading vermek zorunda kaldım
                                                  child: Text("${app.appName}",
                                                      textAlign:
                                                      TextAlign.start,
                                                      style: TextStyle(
                                                        color:
                                                        Color(0xFF595959),
                                                        fontSize: 30.0,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontFamily: 'MuseoSans',
                                                      )),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                    "${app.appDescription}}",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 21.0,
                                                      color: Color(0xFF9F9F9F),
                                                      fontFamily: 'MuseoSans',
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                          margin: EdgeInsets.only(bottom: 30.0),
                                          child: FlatButton(
                                            onPressed: () {},
                                            child: RaisedButtonDesign(
                                              onPress: () {},
                                              backColor: Color(0xFF00E2FF),
                                              borderColor: Color(0xFF0FBDF9),
                                              textSize: 45.0,
                                              buttonText: 'İndir',
                                            ),
                                          ))),
                                ],
                              ),
                            ),
                          ],
                        );

                    },
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

*/