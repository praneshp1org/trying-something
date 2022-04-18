// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: const Icon(Icons.search),
          ),
        ],
        title: const Text(
          "Category",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          color: Colors.green,
          //child: Image.asset("images/science.png"),
        ),
      ),
    );
  }
}
