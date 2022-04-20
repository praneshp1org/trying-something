import 'package:book_app/models/c_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class JSONNew extends StatefulWidget {
  const JSONNew({Key? key}) : super(key: key);

  @override
  State<JSONNew> createState() => _JSONNewState();
}

class _JSONNewState extends State<JSONNew> {
  var url, response;
  late List data;
  bool isLoading = true;
  late List<Comment2> comment2;
  Future getComments() async {
    url = Uri.parse("https://jsonplaceholder.typicode.com/comments");

    response = await http.get(url);
    data = convert.jsonDecode(response.body);
    setState(() {
      comment2 = data.map((json2) => Comment2.fromJSON(json2)).toList();
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getComments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dynamic JSON to preferred Dart Objects'),
        ),
        body: (isLoading == true)
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 10,
                    child: Container(
                      //height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(comment2[index].name),
                            subtitle: Text(comment2[index].email),
                          ),
                          Text(comment2[index].body)
                        ],
                      ),
                    ),
                  );
                },
              ));
  }
}
