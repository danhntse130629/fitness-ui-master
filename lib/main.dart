import 'package:fitness_flutter/tabs/tabs.dart';
import 'package:fitness_flutter/bmi/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Geometria'),
      home: Scaffold(
//        body: Tabs(),
        body: InputPage(),
      ),
    );
  }
}




