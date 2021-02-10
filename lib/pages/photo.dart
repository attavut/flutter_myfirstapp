import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhotoPageState();
  }
}

class _PhotoPageState extends State<StatefulWidget> {
  List<String> list = ['xxx', 'yyy', 'zzz'];

  @override
  Widget build(BuildContext context) {
    String args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Photo show'),
      ),
      body: Column(
        // children: list.map((ele) {
        //   if (ele != 'yyy')
        //     return Text(ele);
        //   else
        //     return Container();
        // }).toList(),
        children: list.where((ele) => ele != 'yyy').map((ele) {
          return Text(ele);
        }).toList(),
      ),
    );
  }
}
