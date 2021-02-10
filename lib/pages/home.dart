import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Container(
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Image.asset(
                  'images/logo.jpg',
                  height: 200,
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Pasword'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      child: Text("Login"),
                      onPressed: () {
                        print('This is Login button');
                      },
                    ),
                    RaisedButton(
                      child: Text("Register"),
                      onPressed: () {
                        print('This is Register button');
                      },
                    )
                  ],
                ),
                Center(child: Text("2021 \u00a9 Attavut Channhu")),
              ],
            ),
          ),
        ));
  }
}
