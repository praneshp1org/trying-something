import 'package:book_app/models/comments_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class JSON02 extends StatefulWidget {
  const JSON02({Key? key}) : super(key: key);

  @override
  State<JSON02> createState() => _JSON02State();
}

class _JSON02State extends State<JSON02> {
  var url, response;
  late List data;
  late List<Comment> comment;
  bool isLoading = true;

  Future getComment() async {
    url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    response = await http.get(url);
    data = convert.jsonDecode(response.body);
    setState(() {
      comment = data.map((json) => Comment.fromJson(json)).toList();
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getComment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Serialization 02'),
      ),
      body: (isLoading == true)
          ? LinearProgressIndicator()
          : ListView.builder(
              itemCount: comment.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comment[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(comment[index].email),
                    Text(comment[index].body),
                  ],
                );
              },
            ),
    );
  }
}
