import 'package:http/http.dart' as http;
// import 'package:travel_app/maindata.dart';
// import 'package:travel_app/maindata.dart';

Future<void> deleteData(String id) async {
  final response = await http.delete(
    Uri.parse('http://192.168.1.101:8080/popular-destinations?id=$id'),
  );
  print(response.body);
}

void main() async {
  deleteData("yWpEfWPe");
}
