import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop/home_desktop.dart';
import 'mobile/home_mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ColorShifter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenTypeLayout.builder(
        breakpoints: ScreenBreakpoints(
          desktop: 500,
          tablet: 100,
          watch: 10,
        ),
        mobile: (BuildContext context) => MobileHome(),
        tablet: (BuildContext context) => MobileHome(),
        desktop: (BuildContext context) => DesktopHome(),
      ),
    );
  }
}
