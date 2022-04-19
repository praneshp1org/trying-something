import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class JSON01 extends StatefulWidget {
  const JSON01({Key? key}) : super(key: key);

  @override
  State<JSON01> createState() => _JSON01State();
}

class _JSON01State extends State<JSON01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Serialization'),
      ),
      body: Center(
        child: Text('JSON '),
      ),
    );
  }
}
