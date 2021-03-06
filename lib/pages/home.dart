import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<StatefulWidget> {
  String msg;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
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
                    controller: _usernameController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Pasword'),
                    controller: _passwordController,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      child: Text("Login"),
                      onPressed: () {
                        print('This is Login button');
                        msg = _usernameController.text;
                        setState(() {});

                        Navigator.pushNamed(context, '/photo-page', arguments: [
                          _usernameController.text,
                          _passwordController.text
                        ]);
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
                (msg != null) ? Text(msg) : Container()
              ],
            ),
          ),
        ));
  }
}
