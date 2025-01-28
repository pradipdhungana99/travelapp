import 'package:flutter/material.dart';

class Searchplacespage extends StatelessWidget {
  const Searchplacespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text('Search'),
        actions: [
          Text(
            'Cancel',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
