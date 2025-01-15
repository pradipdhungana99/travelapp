import 'package:flutter/material.dart';
// import 'package:travel_app/data.dart';

class PopularPackagePage extends StatelessWidget {
  const PopularPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text(
          'Popular Package',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'All Popular Trip Package',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 600,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return PopularTripPackage(
                      popularpackage: PopularPackage.popularpackages[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
                itemCount: PopularPackage.popularpackages.length),
          )
        ],
      ),
    );
  }
}

class PopularPackage {
  final String image;
  final String title;
  final String tripDate;
  final String ratings;
  final String pricePerStay;

  PopularPackage(
      {required this.image,
      required this.title,
      required this.tripDate,
      required this.ratings,
      required this.pricePerStay});

  static List<PopularPackage> popularpackages = [
    PopularPackage(
      image:
          'https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      title: 'Trip to Paris',
      tripDate: '2022-01-01',
      ratings: '4.5',
      pricePerStay: '\$1000',
    ),
    PopularPackage(
      image:
          'https://images.pexels.com/photos/207353/pexels-photo-207353.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      title: 'Trip to Paris',
      tripDate: '2022-01-01',
      ratings: '4.5',
      pricePerStay: '\$1000',
    ),
    PopularPackage(
      image:
          'https://images.pexels.com/photos/547114/pexels-photo-547114.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      title: 'Trip to Paris',
      tripDate: '2022-01-01',
      ratings: '4.5',
      pricePerStay: '\$1000',
    ),
    PopularPackage(
      image:
          'https://images.pexels.com/photos/1590549/pexels-photo-1590549.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      title: 'Trip to Paris',
      tripDate: '2022-01-01',
      ratings: '4.5',
      pricePerStay: '\$1000',
    ),
  ];
}

class PopularTripPackage extends StatelessWidget {
  final PopularPackage popularpackage;

  const PopularTripPackage({super.key, required this.popularpackage});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Image.network(
                popularpackage.image,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Text(popularpackage.title),
                  Text(popularpackage.tripDate),
                  Text(popularpackage.ratings)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
