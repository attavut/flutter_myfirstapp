import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/models/login.dart';

class PhotoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhotoPageState();
  }
}

class _PhotoPageState extends State<StatefulWidget> {
  var user = {};

  @override
  Widget build(BuildContext context) {
    List<String> args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text('Photo show'),
        ),
        body: Column(
          children: [
            RaisedButton(
                child: Text('Load Data'),
                onPressed: () {
                  var login = Login();
                  login.username = args[0];
                  login.password = args[1];
                  print(login);
                  String loginJsonStr = loginToJson(login);
                  print(loginJsonStr);
                }),
          ],
        ));
  }
}
