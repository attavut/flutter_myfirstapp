import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/models/login.dart';
import 'package:flutter/services.dart';
import 'package:myfirstapp/models/photo.dart';
import 'package:http/http.dart' as http;
import 'package:myfirstapp/models/randomPhoto.dart';

class PhotoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhotoPageState();
  }
}

class _PhotoPageState extends State<StatefulWidget> {
  var user = {};
  List<Photo> photos;
  RandomPhoto randomPhoto;

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('user: ' + args[0]),
                ),
              ],
            ),
            Row(
              children: [
                RaisedButton(
                    child: Text('Load Data Json File'),
                    onPressed: () {
                      Future<String> photoJson =
                          rootBundle.loadString('json/photos.json');
                      photoJson.then((value) {
                        photos = photoFromJson(value);
                        randomPhoto = null;
                        print(photos.length);
                      });
                    }),
                RaisedButton(
                    child: Text('Show Data'),
                    onPressed: () {
                      randomPhoto = null;
                      setState(() {});
                    }),
                RaisedButton(
                    child: Text('Load from HTTP'),
                    onPressed: () async {
                      var url = 'https://dog.ceo/api/breeds/image/random';
                      var response = await http.get(url);
                      print(
                          response.statusCode.toString() + ' ' + response.body);
                      randomPhoto = randomPhotoFromJson(response.body);
                      photos = null;
                      print(randomPhoto.message);
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
                : Container(),
            (randomPhoto != null)
                ? Image.network(
                    randomPhoto.message,
                    width: 100,
                  )
                : Container()
          ],
        ));
  }
}
