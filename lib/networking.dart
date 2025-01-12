// import 'dart:async';
// import 'dart:convert';

// import 'package:http/http.dart' as http;

// -------------NETWORKING-------------

// Future getData() async {
//   // Future<void> fetchData() async {
//   final response =
//       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//   // print(response.body);
//   // print(response.statusCode);
//   // final decodeBody = jsonDecode(response.body);
//   // print(decodeBody[2]['body']);
//   final decodeBody = jsonDecode(response.body);
//   final decodeBody2 = Post.fromJson(decodeBody[0]);

//   final posts = postsFromJson(response.body);
//   for (var post in posts) {
//     print(post.body);
//   }
//   // print(decodeBody2.title);

//   // return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
// }

// Future<Post> getSinglePost(String titleId) async {
//   final singlePostResponse = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$titleId'));
//   final decodedPost = jsonDecode(singlePostResponse.body);

//   return Post.fromJson(decodedPost);
// }

// Future<List<Comment>> getPostComments(String postId) async {
//   List<Comment> comments = [];
//   final postResponse = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId/comments'));
//   final decodedComment = jsonDecode(postResponse.body);

//   for (var c in decodedComment) {
//     comments.add(Comment.fromJson(c));
//   }
//   return comments;
// }

// List<Post> postsFromJson(String nonDecodedString) {
//   List<Post> posts = [];
//   for (var post in jsonDecode(nonDecodedString)) {
//     posts.add(Post.fromJson(post));
//   }
//   return posts;
// }

// // Future<List<Comment>> getcommentId(String commentId) async {
// //   final commentResponse = await http.get(
// //       Uri('https://jsonplaceholder.typicode.com/comments?postId=$commentId'));
// //   final decodedComment = jsonDecode(commentResponse.body);
// //   List<Comment> comments = [];
// //   for (var i = 0; i < decodedComment.length; i++) {
// //     comments.add(Comment.fromJson(i));
// //   }
// // }

// Future<void> main() async {
//   // final post = await getSinglePost('2');
//   // final post1 = await getSinglePost('3');
//   // final post3 = await getSinglePost('4');
//   // print(post.body);
//   // print(post1.body);
//   // print(post3.body);

//   final comments = await getPostComments('5');
//   // print(post4.first.email);
//   for (var i = 0; i < comments.length; i++) {
//     print(comments[i].email);
//   }
//   // final commentId1 = await getcommentId(1.toString());
//   // for (var i = 0; i < commentId1.length; i++) {
//   //   print(commentId1[i].body);
//   // }
// }

// class Post {
//   final int id;
//   final String title;
//   final String body;
//   final int userId;

//   Post(
//       {required this.id,
//       required this.title,
//       required this.body,
//       required this.userId});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//       userId: json['userId'],
//     );
//   }
// }

// class Comment {
//   final String email;
//   final int postId;
//   final String body;
//   final int id;
//   final String name;

//   Comment(
//       {required this.email,
//       required this.postId,
//       required this.body,
//       required this.id,
//       required this.name});

//   factory Comment.fromJson(Map<String, dynamic> json) {
//     return Comment(
//       email: json['email'],
//       postId: json['postId'],
//       body: json['body'],
//       id: json['id'],
//       name: json['name'],
//     );
//   }
// }

// class PostComment {
//   final int postId;
//   final int id;
//   final String name;
//   final String email;
//   final String body;

//   PostComment(
//       {required this.postId,
//       required this.id,
//       required this.name,
//       required this.email,
//       required this.body});

//   factory PostComment.fromJson(Map<String, dynamic> json) {
//     return PostComment(
//       postId: json['postId'],
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       body: json['body'],
//     );
//   }
// }
