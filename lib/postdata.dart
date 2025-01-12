import 'dart:convert';

import 'package:http/http.dart' as http;
// import 'package:travel_app/networking.dart';

Future<void> sendPost(Post post) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    body: jsonEncode(
      post.toJson(),
    ),
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );
  print(response.body);
}

Future<void> main() async {
  await sendPost(Post(id: 2, title: 'PostData', body: 'PostBody', userId: 3));
}

class Post {
  final int id;
  final String title;
  final String body;
  final int userId;

  Post(
      {required this.id,
      required this.title,
      required this.body,
      required this.userId});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      userId: json['userId'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'userId': userId,
      'id': id,
    };
  }
}
