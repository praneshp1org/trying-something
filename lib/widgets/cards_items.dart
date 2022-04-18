import 'package:book_app/card_model.dart';
import 'package:flutter/material.dart';

class CardItems extends StatefulWidget {
  const CardItems({Key? key}) : super(key: key);

  @override
  State<CardItems> createState() => _CardItemsState();
}

class _CardItemsState extends State<CardItems> {
  List<CardModel> cardsItems = [
    CardModel('images/science.png', "Science"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: cardsItems.length,
          itemBuilder: ((context, index) {
            return Center(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    cardsItems[index].image,
                    width: 80,
                  ),
                  Text("Science"),
                ],
              ),
            );
          })),
    );
  }
}
