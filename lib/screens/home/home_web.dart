import 'package:eidweb/common/whatsapp_call.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenWeb extends StatefulWidget {
  @override
  _HomeScreenWebState createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeScreenWeb> {
//  ValueNotifier<bool> isFirstVisible = ValueNotifier(true);
//https://img.techpowerup.org/200525/top-area.png
//https://img.techpowerup.org/200525/prayer.png
//https://img.techpowerup.org/200525/prayer-2.png
  @override
  Widget build(BuildContext context) {
//    Timer.periodic(Duration(seconds: 4), (timer) {
//      isFirstVisible.value = !isFirstVisible.value;
//    });
    return Scaffold(
        body: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(bottom: 32, top: 0),
            color: Theme.of(context).primaryColor,
            child: Stack(
              children: <Widget>[
                Align(
                    alignment: Alignment.topRight,
                    child: kIsWeb
                        ? Image.network(
                            "https://img.techpowerup.org/200525/top-area.png",
                          )
                        : SvgPicture.asset("assets/top_area.svg")),
                Center(
                  child: Text(
                    'Share with your family and friends',
                    style: TextStyle(color: Colors.white, fontSize: 48),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: kIsWeb
                        ? Image.network(
                            "https://img.techpowerup.org/200525/prayer.png",
                          )
                        : SvgPicture.asset("assets/prayer.svg")),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(bottom: 32, top: 0),
            child: Stack(
              children: <Widget>[
                Align(
                    alignment: Alignment.topLeft,
                    child: kIsWeb
                        ? Image.network(
                            "https://img.techpowerup.org/200525/top-area-2.png",
                          )
                        : SvgPicture.asset("assets/top_area.svg")),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Eid Mubarak',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 64),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      RaisedButton(
                          elevation: 10,
                          shape: StadiumBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Say Eid Mubarak to loved ones',
                              style: TextStyle(
                                  fontFamily: 'ROBOTO',
                                  fontSize: 24,
                                  color: Theme.of(context).accentColor),
                            ),
                          ),
                          onPressed: launchurl)
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: kIsWeb
                        ? Image.network(
                            "https://img.techpowerup.org/200525/prayer-2.png",
                          )
                        : SvgPicture.asset("assets/prayer_2.svg")),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
