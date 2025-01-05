import 'package:flutter/material.dart';

import 'package:travel_app/data.dart';

class PopularPlaces extends StatefulWidget {
  const PopularPlaces({super.key});

  @override
  State<PopularPlaces> createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Title(
          color: Colors.white,
          child: Text(
            'Popular Places',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'All Popular Places',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 24, mainAxisSpacing: 24),
              itemBuilder: (context, index) {
                return PopularPlaceCards(popularCard: popularcards[index]);
              },
              itemCount: popularcards.length,
            ),
          ],
        ),
      ),
    );
  }
}

class PopularPlaceCards extends StatelessWidget {
  final PopularCards popularCard;
  const PopularPlaceCards({super.key, required this.popularCard});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      popularCard.image,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                popularCard.title,
                style: TextStyle(fontSize: 25),
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text(popularCard.location)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Text(popularCard.ratings)
                ],
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: popularCard.pricePerPerson,
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                    TextSpan(text: '/Person', style: TextStyle(fontSize: 18))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
