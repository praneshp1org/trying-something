import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class JSON011 extends StatefulWidget {
  const JSON011({Key? key}) : super(key: key);

  @override
  State<JSON011> createState() => _JSON011State();
}

class _JSON011State extends State<JSON011> {
  var url, response, data;
  int i = 0;
  bool isLoading = true;
  Future readData() async {
    url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
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
    readData();
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
                    //trailing: Text('ID: $i'),
                  );
                },
              ));
  }
}
