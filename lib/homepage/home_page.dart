import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/controllers/destination_controller.dart';

import '../maindata.dart';
// import 'package:travel_app/data.dart';
// import 'package:travel_app/data.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    context.read<DestinationController>().getDestination();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: SizedBox(height: 600, child: GetDestinationList()),
    // );
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextButton(
          onPressed: () {},
          child: Row(
            spacing: 4,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/8159657/pexels-photo-8159657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              ),
              Text(
                'John Doe',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notification_add, size: 35))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 4, 4, 4),
                    fontSize: 40),
                children: [
                  TextSpan(text: 'Explore the \nBeautiful'),
                  TextSpan(
                      text: ' world!',
                      style: TextStyle(color: Colors.deepOrange))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Destination',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text('View all',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 4, 94, 249),
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 450, child: GetDestinationList()),
            // SizedBox(
            //   height: 600,
            //   child: ListView.separated(
            //     itemBuilder: (context, index) =>
            //         DestinationCards(destination: destinations[index]),
            //     scrollDirection: Axis.horizontal,
            //     separatorBuilder: (context, index) => SizedBox(
            //       width: 10,
            //     ),
            //     itemCount: destinations.length,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class DestinationCards extends StatelessWidget {
  final DestinationAPI destination;

  const DestinationCards({super.key, required this.destination});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Container
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GestureDetector(
                    onTap: () {
                      context.goNamed(
                        'detailspage',
                        pathParameters: {
                          'destinationId': destination.id,
                        },
                      );
                    },
                    child: Image.network(
                      destination.imageUrl,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Bookmark Icon
                Positioned(
                  top: 8,
                  right: 8,
                  child: TextButton.icon(
                    onPressed: () {
                      Provider.of<DestinationController>(context, listen: false)
                          .deleteData(destination.id);
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Delete Destinations',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),

            // Text Content
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    destination.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(destination.rating.toStringAsFixed(1)),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey.shade400,
                  ),
                ),
                Text(
                  destination.location,
                  style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Future<List<DestinationAPI>> getDestination() async {
  List<DestinationAPI> destinations = [];
  final response = await http
      .get(Uri.parse('http://192.168.1.101:8080/popular-destinations'));
  final decodedBody = jsonDecode(response.body);
  for (var item in decodedBody) {
    destinations.add(DestinationAPI.fromJson(item));
  }
  debugPrint(destinations.length.toString());
  return destinations;
}

class GetDestinationList extends StatelessWidget {
  const GetDestinationList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<DestinationController>(
      builder: (context, value, child) {
        return ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final destination = value.destinations[index];
            return DestinationCards(destination: destination);
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 10);
          },
          itemCount: value.destinations.length,
        );
      },
    );
  }
}
