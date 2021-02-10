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
        color: Colors.blue[200],
        //margin: EdgeInsets.all(10),
        //margin: MediaQuery.of(context).padding, // ถ้าไม่มี appBar จะทำให้เว้นเนื้อที่ด้านบนเผื่อแทบ "สัญญาณ/แบต" ไว้
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Hello World ')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Attauvt')],
            ),
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('WMG')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
