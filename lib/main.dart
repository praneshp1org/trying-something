import 'package:book_app/pages/YTJSON.dart';
import 'package:book_app/pages/custom_nav.dart';
import 'package:book_app/pages/dynamic_wrapped.dart';
import 'package:book_app/pages/home_page.dart';
import 'package:book_app/pages/json_01.dart';
import 'package:book_app/pages/json_011.dart';
import 'package:book_app/pages/json_02.dart';
import 'package:book_app/pages/json_new.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: {
        "/": (_) => JSONNew(),
      },
    );
  }
}
