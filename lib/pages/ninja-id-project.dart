import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NinjaIdProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("Ninja Id Project"),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  child: Image.asset("assets/naruto.png"),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              Text("NAME", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                height: 5,
              ),
              Text("Do Van Quoc",
                  style: TextStyle(color: Colors.yellow, fontSize: 30)),
              SizedBox(
                height: 15,
              ),
              Text("CURRENT NINJA LEVEL",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 18, letterSpacing: 2)),
              SizedBox(
                height: 5,
              ),
              Text("8", style: TextStyle(color: Colors.yellow, fontSize: 35)),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("quocdo@gmail.com.uk",
                      style: TextStyle(color: Colors.grey, fontSize: 20)),
                ],
              )
            ],
          )),
    );
  }
}
