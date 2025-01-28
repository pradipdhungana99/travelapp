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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.voice_chat),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Search Places',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 3),
                    blurRadius: 2,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Image.network(
                        'https://images.pexels.com/photos/2409958/pexels-photo-2409958.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchData {
  final String imageUrl;
  final String title;
  final String location;
  final String pricePerPersona;

  SearchData(
      {required this.imageUrl,
      required this.title,
      required this.location,
      required this.pricePerPersona});
}

List<SearchData> searchData = [
  SearchData(
    imageUrl: 'https://i.imgur.com/8QK0eBp.jpg',
    title: 'Hotel 1',
    location: 'New York',
    pricePerPersona: '\$100',
  ),
  SearchData(
    imageUrl: 'https://i.imgur.com/8QK0eBp.jpg',
    title: 'Hotel 1',
    location: 'New York',
    pricePerPersona: '\$100',
  ),
  SearchData(
    imageUrl: 'https://i.imgur.com/8QK0eBp.jpg',
    title: 'Hotel 1',
    location: 'New York',
    pricePerPersona: '\$100',
  ),
  SearchData(
    imageUrl: 'https://i.imgur.com/8QK0eBp.jpg',
    title: 'Hotel 1',
    location: 'New York',
    pricePerPersona: '\$100',
  )
];
