import 'package:book_app/widgets/cards.dart';
import 'package:flutter/material.dart';

class BodyItem extends StatefulWidget {
  const BodyItem({Key? key}) : super(key: key);

  @override
  State<BodyItem> createState() => _BodyItemState();
}

class _BodyItemState extends State<BodyItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Cards(),
          Cards(),
          Cards(),
        ],
      ),
    );
  }
}
