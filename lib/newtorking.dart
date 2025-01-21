import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> fetchPosts() async {
  final res =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  // print(res.body);
  // print(res.statusCode);

  // final decodedBody = jsonDecode(res.body);
  // final firstPost = Post.fromJson(decodedBody[0] as Map<String, dynamic>);
  // print(res[0]['title']);
  final posts = postsFromJson(res.body);
  for (var element in posts) {
    print(element.id);
  }
}

Future<Post> getSinglePost(String postId) async {
  final res = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId'));
  final decodedPost = jsonDecode(res.body);
  return Post.fromJson(decodedPost);
}

Future<List<Comment>> getPostComments(String postId) async {
  final res = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId/comments'));

  return List<Comment>.from(
      json.decode(res.body).map((x) => Comment.fromJson(x)));
  // return Post.fromJson(decodedPost);
}

List<Post> postsFromJson(String nonDecodedString) {
  List<Post> posts = [];
  final decodedData = jsonDecode(nonDecodedString);
  for (var data in decodedData) {
    posts.add(Post.fromJson(data));
  }
  return posts;
}

Future<void> sendPost(Post p) async {
  final res = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    body: jsonEncode(p.toJson()),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  );
  print(res.statusCode);
}

// List<Post> postFromJson(String str) =>
//     List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

void main(List<String> args) async {
  // fetchPosts();
  // final post = await getSinglePost("1");
  // print(post.title);
  // final coments = await getPostComments("1");
  // for (var comment in coments) {
  //   print('Comment user email: ${comment.email}');
  // }
  await sendPost(Post(userId: 1, id: 2, title: 'title', body: 'body'));
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {"title": title, "body": body, "userId": userId};
  }

  @override
  String toString() {
    print('userId: $userId, id: $id, title: $title, body: $body');
    return super.toString();
  }
}

class Comment {
  final int postId;
  final int id;
  final String name;
  final String body;
  final String email;

  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.body,
    required this.email,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
        postId: json['postId'],
        id: json['id'],
        name: json['name'],
        body: json['body'],
        email: json['email']);
  }

  @override
  String toString() {
    print('postId: $postId, id: $id, name: $name,email: $email, body: $body');
    return super.toString();
  }
}

// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

// String postToJson(List<Post> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
