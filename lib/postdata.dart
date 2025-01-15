// import 'dart:convert';

// // import 'package:flutter/material.dart';
import 'dart:convert';
// import 'dart:js_interop';

// import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'maindata.dart';

// import 'homepage/home_page.dart';
// // import 'package:travel_app/networking.dart';

// Future<void> sendPost(Post post) async {
//   final response = await http.post(
//     Uri.parse('https://jsonplaceholder.typicode.com/posts'),
//     body: jsonEncode(
//       post.toJson(),
//     ),
//     headers: {
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//   );
//   print(response.body);
// }

// Future<void> main() async {
//   await sendPost(Post(id: 2, title: 'PostData', body: 'PostBody', userId: 3));
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
//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'body': body,
//       'userId': userId,
//       'id': id,
//     };
//   }
// }

Future<void> sendPost(DestinationAPI destination) async {
  final response = await http.post(
    Uri.parse('http://192.168.1.101:8080/popular-destinations'),
    body: jsonEncode(
      destination.toJson(),
    ),
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );
  print(response.body);
}

void main(List<String> args) async {
  final rara = DestinationAPI(
    id: '2',
    name: 'RARA',
    description: 'description',
    rating: 2.4,
    imageUrl:
        'https://images.pexels.com/photos/28271638/pexels-photo-28271638/free-photo-of-a-desert-landscape-with-mountains-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'location',
  );
  await sendPost(rara);
}
