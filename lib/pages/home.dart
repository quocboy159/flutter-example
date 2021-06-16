import 'package:flutter/material.dart';
import 'package:myapp/components/background-decoration.dart';
import 'package:myapp/components/locale-picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            actions: <Widget>[LocalePicker()],
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
                    child: new Text(AppLocalizations.of(context)!.search),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/search');
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.of(context)!.imagesAndAssets),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/images');
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.of(context)!.buttonsAndIcons),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/buttons');
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.of(context)!.row),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/rows');
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.of(context)!.expandedWidgets),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/expandeds');
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.of(context)!.ninjaIdProject),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/ninja-id-project');
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.of(context)!.listData),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/list-data');
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.of(context)!.cardList),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/card-list');
                    },
                  ),
                  ElevatedButton(
                    child: Text(AppLocalizations.of(context)!.dataForm),
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/form');
                    },
                  ),
                ]),
          ),
        ));
  }
}
