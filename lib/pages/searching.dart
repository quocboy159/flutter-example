import 'package:flutter/material.dart';
import 'package:myapp/data-search.dart';

class Searching extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Container(
          child: Center(child: Text("Please find your city")),
        ),
      ),
        appBar: AppBar(
            actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Search Application')));
  }
}
