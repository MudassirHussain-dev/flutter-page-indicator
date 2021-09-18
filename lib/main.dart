import 'package:flutter/material.dart';
import 'package:flutter_slider/screens/IndicatorScreen.dart';

import 'dummy/demo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainIndicatorScreen(),
    );
  }
}
