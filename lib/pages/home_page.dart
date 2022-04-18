// ignore_for_file: unnecessary_const

import 'package:book_app/widgets/cards_items.dart';
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
      body: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Card(
              child: CardItems(),
            ),
            Card(
              child: Container(
                color: Colors.blue,
              ),
            ),
            Card(
              child: Container(
                color: Colors.red,
              ),
            ),
            Card(
              child: Container(
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
