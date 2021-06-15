import 'package:flutter/material.dart';
import 'package:myapp/components/background-decoration.dart';

class Home extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(188, 36),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: null,
            ),
            title: Text('Search Application')),
        body: Container(
          decoration: backgroundDecoration,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ElevatedButton(
                    child: new Text('Search'),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/search');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Images & Assets'),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/images');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Buttons & Icons'),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/buttons');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Rows'),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/rows');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Expanded Widgets'),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/expandeds');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Ninja Id Project'),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/ninja-id-project');
                    },
                  ),
                  ElevatedButton(
                    child: Text('List Data'),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/list-data');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Card List'),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/card-list');
                    },
                  ),
                   ElevatedButton(
                    child: Text('Data Form'),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/form');
                    },
                  )
                ]),
          ),
        ));
  }
}
