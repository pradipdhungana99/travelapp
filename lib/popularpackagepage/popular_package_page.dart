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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          'https://images.pexels.com/photos/9586148/pexels-photo-9586148.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      title: 'Rara Lake',
      tripDate: '2022-01-01',
      ratings: '4.5',
      pricePerStay: '\$840',
    ),
    PopularPackage(
      image:
          'https://images.pexels.com/photos/4235503/pexels-photo-4235503.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      title: 'Annapurna, Nepal',
      tripDate: '2022-01-01',
      ratings: '4.5',
      pricePerStay: '\$690',
    ),
    PopularPackage(
      image:
          'https://images.pexels.com/photos/14989389/pexels-photo-14989389/free-photo-of-landscape-photography-of-phewa-lake.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      title: 'Pokhara, Fewa Lake',
      tripDate: '2022-01-01',
      ratings: '4.5',
      pricePerStay: '\$800',
    ),
    PopularPackage(
      image:
          'https://images.pexels.com/photos/2104882/pexels-photo-2104882.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      title: 'Kathmandu, Bhaktapur',
      tripDate: '2022-01-01',
      ratings: '4.5',
      pricePerStay: '\$999',
    ),
  ];
}

class PopularTripPackage extends StatelessWidget {
  final PopularPackage popularpackage;

  const PopularTripPackage({super.key, required this.popularpackage});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                popularpackage.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                Text(
                  popularpackage.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.calendar_month_outlined),
                    Text(popularpackage.tripDate,
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
                Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Text(popularpackage.ratings),
                  ],
                )
              ],
            ),
          ),
          TextButton(onPressed: () {}, child: Text(popularpackage.pricePerStay))
        ],
      ),
    );
  }
}
