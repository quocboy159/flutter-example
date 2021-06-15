import 'package:flutter/material.dart';
import 'package:myapp/pages/buttons-icons.dart';
import 'package:myapp/pages/card-list.dart';
import 'package:myapp/pages/data-forms.dart';
import 'package:myapp/pages/expandeds.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/images-assets.dart';
import 'package:myapp/pages/list-data.dart';
import 'package:myapp/pages/ninja-id-project.dart';
import 'package:myapp/pages/rows.dart';
import 'package:myapp/pages/searching.dart';


Map<String, WidgetBuilder> routes(BuildContext context) {
  return {
    '/': (context) => Home(),
    '/search': (context) => Searching(),
    '/images': (context) => ImagesAndAssets(),
    '/buttons': (context) => ButtonsAndIcons(),
    '/rows': (context) => Rows(),
    '/expandeds': (context) => Expandeds(),
    '/ninja-id-project': (context) => NinjaIdProject(),
    '/list-data': (context) => ListData(),
    '/card-list': (context) => CardList(),
    '/form': (context) => DataForms(),
  };
}
