import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/models/login.dart';
import 'package:flutter/services.dart';
import 'package:myfirstapp/models/photo.dart';

class PhotoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhotoPageState();
  }
}

class _PhotoPageState extends State<StatefulWidget> {
  var user = {};
  List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    List<String> args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text('Photo show'),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                RaisedButton(
                    child: Text('Load Data'),
                    onPressed: () {
                      Future<String> photoJson =
                          rootBundle.loadString('json/photos.json');
                      photoJson.then((value) {
                        photos = photoFromJson(value);
                        print(photos.length);
                      });
                    }),
                RaisedButton(
                    child: Text('Show Data'),
                    onPressed: () {
                      setState(() {});
                    }),
              ],
            ),
            (photos != null)
                ? Column(
                    children: photos.getRange(0, 100).map((photo) {
                      return Card(
                        child: ListTile(
                            title: Text(photo.title),
                            leading: Image.network(
                              photo.thumbnailUrl,
                              width: 50,
                            )),
                      );
                    }).toList(),
                  )
                : Container()
          ],
        ));
  }
}
