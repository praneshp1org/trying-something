import 'dart:html';

import 'package:book_app/card_model.dart';
import 'package:flutter/material.dart';

class BodyItem extends StatefulWidget {
  const BodyItem({Key? key}) : super(key: key);

  @override
  State<BodyItem> createState() => _BodyItemState();
}

class _BodyItemState extends State<BodyItem> {
  List<CardModel> cards = [CardModel("images/science.png", "Science")];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Text(""),
        ],
      ),
    );
  }
}
