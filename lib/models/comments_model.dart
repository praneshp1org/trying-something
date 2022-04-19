class Comment {
  var name;
  var email;
  var body;

  Comment.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }
}
