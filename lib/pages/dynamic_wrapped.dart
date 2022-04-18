import 'package:flutter/material.dart';

class Dynamic extends StatefulWidget {
  const Dynamic({Key? key}) : super(key: key);

  @override
  State<Dynamic> createState() => _DynamicState();
}

class _DynamicState extends State<Dynamic> {
  @override
  Widget build(BuildContext context) {
    return Center(
      /** Chip Widget **/
      child: Chip(
        elevation: 20,
        padding: EdgeInsets.all(8),
        backgroundColor: Colors.greenAccent[100],
        shadowColor: Colors.black,
        avatar: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetwordImage
        ), //CircleAvatar
        label: Text(
          'GeeksforGeeks',
          style: TextStyle(fontSize: 20),
        ), //Text
      ), //Chip
    );
  }
}
