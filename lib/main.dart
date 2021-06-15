import 'package:flutter/material.dart';
import 'package:myapp/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(primaryColor: Color(0xFF7986CB)),
      initialRoute: '/',
        routes: routes(context)
    );
  }
}
