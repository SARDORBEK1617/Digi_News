import 'package:flutter/material.dart';
import 'package:untitled/pick.dart';
import 'package:untitled/verify_login.dart';
import 'package:untitled/welcome.dart';

import 'digi_news.dart';
import 'signup.dart';
import 'reset.dart';

//import 'reset.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Diginews(),
    );
  }
}
