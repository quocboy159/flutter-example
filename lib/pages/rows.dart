import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("I am a developer"),
            MaterialButton(
              color: Colors.redAccent,
              onPressed: () {},
              child: Text("click me"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.lime,
              child: Text("Inside container"),
            )
          ],
        ),
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Images and Assets')));
  }
}
