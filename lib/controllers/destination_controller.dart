import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/maindata.dart';

class DestinationController extends ChangeNotifier {
  final List<DestinationAPI> _destinations = [];
  List<DestinationAPI> get destinations => _destinations;

  void addDestination(DestinationAPI destination) {
    _destinations.add(destination);
    notifyListeners();
  }

  Future<void> getDestination() async {
    List<DestinationAPI> destinations = [];
    final response = await http
        .get(Uri.parse('http://192.168.1.101:8080/popular-destinations'));
    final decodedBody = jsonDecode(response.body);
    for (var item in decodedBody) {
      destinations.add(DestinationAPI.fromJson(item));
    }
    debugPrint(destinations.length.toString());
    _destinations.clear();
    _destinations.addAll(destinations);
    notifyListeners();
  }

  Future<void> deleteData(String id) async {
    final response = await http.delete(
      Uri.parse('http://192.168.1.101:8080/popular-destinations?id=$id'),
    );
    if (response.statusCode == 204) {
      _destinations.removeWhere((element) => element.id == id);
      notifyListeners();
    }
  }
}
