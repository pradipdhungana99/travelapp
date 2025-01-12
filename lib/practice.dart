// import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import 'package:flutter/material.dart';

// Future<void> addedPut(Put put) async {
//   final res = await http.put(
//     Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
//     body: jsonEncode(
//       put.toJSON(),
//     ),
//     headers: {
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//   );
//   print(res.body);
//   print(res.statusCode);

// }
// Future<void> deletePost() async {
//   final response = await http.delete(
//     Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
//   );
//   if (response.statusCode == 200) {
//     print('Successfully deleted post');
//   } else {
//     print('Failed to delete post');
//   }
// }

Future<void> main() async {
  final results = await getImage();
  for (final result in results) {
    print(result.title);
  }
  // await deletePost();
}

Future<List<Get>> getImage() async {
  List<Get> photos = [];
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/photos'),
  );
  final decodedBody = await jsonDecode(response.body);
  for (var d in decodedBody) {
    photos.add(Get.fromJson(d));
  }
  return photos;
}

class Get {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Get(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory Get.fromJson(Map<String, dynamic> json) {
    return Get(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
  // Map<String, dynamic> toJson() {
  //   return {
  //     'albumId': albumId,
  //     'id': id,
  //     'title': title,
  //     'url': url,
  //     'thumbnailUrl': thumbnailUrl,
  //   };
  // }
}

class GetData extends StatelessWidget {
  const GetData({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getImage(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(snapshot.data![index].title),
                  subtitle: Text(snapshot.data![index].thumbnailUrl),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
