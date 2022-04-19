import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class JSON02 extends StatefulWidget {
  const JSON02({Key? key}) : super(key: key);

  @override
  State<JSON02> createState() => _JSON02State();
}

class _JSON02State extends State<JSON02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Serialization 02'),
      ),
      body: Center(
        child: Text('JSON here'),
      ),
    );
  }
}
