import 'package:flutter/material.dart';
import 'package:orthodentist/pages/sign_up.dart';
import 'package:orthodentist/string_constant.dart';
import 'pages/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orthodentist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => SignIn(),
        SIGN_IN: (context) => SignIn(),
        SIGN_UP: (context) => SignUp()
      },
      initialRoute: "/",
    );
  }
}
