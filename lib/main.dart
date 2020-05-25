import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:eidweb/common/responsive_helper.dart';
import 'package:eidweb/screens/home/home_mobile.dart';
import 'package:eidweb/screens/home/home_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'common/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        data: (Brightness brightness) =>
            brightness == Brightness.light ? lightTheme : darkTheme,
        themedWidgetBuilder: (BuildContext context, ThemeData theme) =>
            MaterialApp(
              title: 'Eid Mubarak',
              theme: theme,
              home: ResponsiveHelper(
                webWidget: HomeScreenWeb(),
                mobileWidget: HomeScreenMobile(),
              ),
              builder: (context, widget) {
                return ResponsiveWrapper(
                    child: widget,
                    shrinkWrap: true,
                    maxWidth: 1600,
                    minWidth: 600,
                    mediaQueryData: MediaQuery.of(context),
                    breakpoints: [
                      ResponsiveBreakpoint.resize(480,
                          name: MOBILE, scaleFactor: 1),
                      // ResponsiveBreakpoint.resize(350, name: MOBILE, scaleFactor: 0.3),
                      // ResponsiveBreakpoint.resize(400, name: MOBILE, scaleFactor: 0.3),
                      ResponsiveBreakpoint.autoScale(800,
                          name: DESKTOP, scaleFactor: 1),
                      ResponsiveBreakpoint.autoScale(1000,
                          name: DESKTOP, scaleFactor: 1),
                      ResponsiveBreakpoint.autoScale(1100,
                          name: DESKTOP, scaleFactor: 1),
                      ResponsiveBreakpoint.autoScale(1200,
                          name: DESKTOP, scaleFactor: 1),
                      ResponsiveBreakpoint.autoScale(1400,
                          name: DESKTOP, scaleFactor: 1),
                      ResponsiveBreakpoint.autoScale(1600,
                          name: DESKTOP, scaleFactor: 1),
                      ResponsiveBreakpoint.autoScale(1800,
                          name: DESKTOP, scaleFactor: 1),
                    ],
                    background:
                        Container(color: theme.scaffoldBackgroundColor));
              },
            ));
  }
}
