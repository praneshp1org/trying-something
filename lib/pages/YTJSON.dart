import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class YTJSON extends StatefulWidget {
  const YTJSON({Key? key}) : super(key: key);

  @override
  State<YTJSON> createState() => _YTJSONState();
}

class _YTJSONState extends State<YTJSON> {
  //field
  var url, response, data;
  bool isLoading = true;

  //future
  Future fetchData() async {
    url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
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
          title: Text('JSON Parsing'),
        ),
        body: (isLoading == true)
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]['title']),
                    subtitle: Text(data[index]['body']),
                  );
                },
              ));
  }
}
