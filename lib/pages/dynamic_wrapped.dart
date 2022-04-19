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
      appBar: AppBar(
        actions: [
          Icon(Icons.book),
        ],
      ),
      body: Center(
          /** Chip Widget **/
          child: Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: const Text('PS'),
          
        ),
        label: const Text('Pranesh Shrestha'),
      ) //Chip
          ),
    );
  }
}
