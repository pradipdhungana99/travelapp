import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travel_app/maindata.dart';

Future<void> putData(DestinationAPI destinationAPI) async {
  final res = await http.put(
    Uri.parse(
        'http://192.168.1.101:8080/popular-destinations?id=${destinationAPI.id}'),
    body: jsonEncode(
      destinationAPI.toJson(),
    ),
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );
  print(res.body);
}

void main(List<String> args) async {
  DestinationAPI destinationAPI = DestinationAPI(
    id: 'rLJn13F1',
    name: 'Rolpa',
    description: 'This is a description',
    rating: 2.4,
    imageUrl:
        'https://images.pexels.com/photos/28271638/pexels-photo-28271638/free-photo-of-a-desert-landscape-with-mountains-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'location',
  );
  await putData(destinationAPI);
}
