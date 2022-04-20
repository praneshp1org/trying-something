class Comment2 {
  var name;
  var email;
  var body;
  Comment2.fromJSON(Map<String, dynamic> json2) {
    name = json2['name'];
    email = json2['email'];
    body = json2['body'];
  }
}
