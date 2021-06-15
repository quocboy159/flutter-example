import 'package:flutter/material.dart';

class Expandeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text("I am a developer"),
                color: Colors.white10,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                child: MaterialButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  child: Text("click me"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.lime,
                child: Text("Inside container"),
              ),
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
