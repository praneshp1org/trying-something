import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class JSON01 extends StatefulWidget {
  const JSON01({Key? key}) : super(key: key);

  @override
  State<JSON01> createState() => _JSON01State();
}

class _JSON01State extends State<JSON01> {
  //fields
  var url;
  var response;
  var data;
  bool isLoading = true;

  //Future
  Future fetchData() async {
    url = 'https://jsonplaceholder.typicode.com/posts';
    response = await http.get(url);
    setState(() {
      data = convert.jsonDecode(response.body);
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Serialization'),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text(data[index]['id']),
                );
              },
            ),
    );
  }
}
