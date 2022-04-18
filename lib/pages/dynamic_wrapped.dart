import 'package:flutter/material.dart';

class Dynamic extends StatefulWidget {
  const Dynamic({Key? key}) : super(key: key);

  @override
  State<Dynamic> createState() => _DynamicState();
}

class _DynamicState extends State<Dynamic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          /** Chip Widget **/
          child: Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: const Text('AB'),
        ),
        label: const Text('Aaron Burr'),
      ) //Chip
          ),
    );
  }
}
