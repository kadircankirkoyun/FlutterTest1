import 'package:flutter/material.dart';
import 'db.dart';
import 'models.dart';

class TextFieldDesign extends StatelessWidget {
  //TEXTBOX TASARIMI.

  TextFieldDesign({@required this.hintText, @required this.iconType});
  final String hintText;
  final IconData iconType;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: new TextFormField(
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              iconType,
              color: Color(0xFFBDBDBD),
            ),
          ),

          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w900,
            color: Color(0xFF4D4D4D),
            fontSize: 19.0,
            fontFamily: 'MuseoSans',
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Color(0xFFCBF5FE), width: 4.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Color(0xFFCBF5FE), width: 2.5),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "Boş geçilemez.";
          } else {
            return null;
          }
        },
        style: new TextStyle(
          fontWeight: FontWeight.w900,
          color: Color(0xFF4D4D4D),
          fontSize: 19.0,
          fontFamily: 'MuseoSans',
        ),
      ),
    );
  }
}

class WhiteIconButton extends StatelessWidget {
  // BACK BUTON İÇİN TASARLANMIŞTI
  WhiteIconButton(
      {@required this.onPress,
      @required this.iconType,
      @required this.sizeIcon});

  final Function onPress;
  final IconData iconType;
  final double sizeIcon;
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE1E1E0), width: 10.0),
            borderRadius: BorderRadius.circular(16.0)),
      ),
      child: IconButton(
        iconSize: sizeIcon,
        icon: Container(
          child: Icon(iconType),
        ),
        color: Color(0xFF5B5B5B),
        onPressed: onPress,
      ),
    );
  }
}

class RaisedButtonDesign extends StatelessWidget {
  // ASIL İŞLEV BUTONUMUZ TASARIMDA ARKASI MAVİ OLAN.
  RaisedButtonDesign(
      {@required this.buttonText,
      @required this.textSize,
      @required this.backColor,
      @required this.borderColor,
      @required this.onPress});
  final String buttonText;
  final double textSize;
  final Color backColor;
  final Color borderColor;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
      child: RaisedButton(
        color: backColor,
        onPressed: onPress,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: textSize,
              fontWeight: FontWeight.w900,
              fontFamily: 'MuseoSans',
              shadows: [
                Shadow(
                  // bottomLeft
                  offset: Offset(-1.5, -1.5),
                  color: borderColor,
                ),
                Shadow(
                  // bottomRight
                  offset: Offset(1.5, -1.5),
                  color: borderColor,
                ),
                Shadow(
                  // topRight
                  offset: Offset(1.5, 1.5),
                  color: borderColor,
                ),
                Shadow(
                  // topLeft
                  offset: Offset(-2.5, -2.5),
                  color: borderColor,
                ),
              ],
            ),
          ),
        ),
        shape: UnderlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 10.0),
            borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}

class IconColoredButton extends StatelessWidget {
  // Arka planı renkli olan icon button.
  IconColoredButton(
      {@required this.iconSize,
      @required this.backColor,
      @required this.iconType,
      @required this.onPress});
  final double iconSize;
  final Color backColor;
  final IconData iconType;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: Color(0xFFE1E1E0),
        shape: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE1E1E0), width: 4.8),
            borderRadius: BorderRadius.circular(20.0)),
      ),
      child: Ink(
        decoration: ShapeDecoration(
            color: backColor,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Colors.white, width: 4.8),
            )),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
            iconSize: iconSize,
            icon: Container(
              child: Icon(
                iconType,
              ),
            ),
            color: Colors.white,
            onPressed: onPress,
          ),
        ),
      ),
    );
  }
}

class MainSettingsButton extends StatelessWidget {
  MainSettingsButton(
      {@required this.buttonColor, this.buttonText, this.buttonIcon});
  final Color buttonColor;
  final String buttonText;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        child: Column(
          children: <Widget>[
            IconColoredButton(
              backColor: buttonColor,
              iconType: buttonIcon,
              onPress: () {},
              iconSize: 50.0,
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(buttonText,
                style: TextStyle(
                  fontFamily: 'MuseoSans',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade900,
                )),
          ],
        ),
      ),
    );
  }
}

class AppColoredButton extends StatelessWidget {
  // Arka planı renkli olan icon button.
  AppColoredButton(
      {this.iconSize,
      @required this.backColor,
      @required this.image,
      this.onPress});
  final double iconSize;
  final Color backColor;
  final image;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPress,
      child: Ink(
        decoration: ShapeDecoration(
          color: Color(0xFFE1E1E0),
          shape: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE1E1E0), width: 4.8),
              borderRadius: BorderRadius.circular(20.0)),
        ),
        child: Ink(
          decoration: ShapeDecoration(
              color: backColor,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.white, width: 4.8),
              )),
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Image.network(image),
                height: 60.0,
                width: 60.0,
              )),
        ),
      ),
    );
  }
}


class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        border: Border(bottom:BorderSide(color: Color(0xFFF7F7F7),width: 2.0),),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: AppColoredButton(
              backColor: Colors.red,
              image: 'image/ornek.png',

              onPress: () {},
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                        const EdgeInsets.only(right: 34.0, bottom: 3.3),
                        child: Container(
                          //Text nedenini bilmediğim bir şekilde sağa kaydı düzeltmek için container a alıp pading vermek zorunda kaldım
                          child: Text("Weekend Event",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color(0xFF595959),
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MuseoSans',
                              )),
                        ),
                      ),
                      Container(
                        child: Text("Heres a gem  Good Luck  ",
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
    );
  }
}