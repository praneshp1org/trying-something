import 'package:flutter/material.dart';

class CustomNav extends StatefulWidget {
  const CustomNav({Key? key}) : super(key: key);

  @override
  State<CustomNav> createState() => _CustomNavState();
}

class _CustomNavState extends State<CustomNav> {
  int count = 0;
  void add() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daraz'),
        actions: [
          Positioned(
            child: Stack(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        add();
                      });
                    },
                    icon: Icon(Icons.shopping_cart)),
                Positioned(
                  top: 0,
                  right: 6,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '$count',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('$count times counted'),
      ),
    );
  }
}
