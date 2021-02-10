import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/home.dart';
import 'package:myfirstapp/pages/photo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: 'My First App',
      routes: {'/photo-page': (context) => PhotoPage()},
    );
  }
}
