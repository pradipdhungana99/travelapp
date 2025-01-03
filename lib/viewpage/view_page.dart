import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://images.pexels.com/photos/1494067/pexels-photo-1494067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                Text(
                  'View',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 220, // Added to ensure it starts from the left
            right: 10, // Added to ensure it extends to the right
            child: Card(
              color: const Color.fromARGB(255, 89, 90, 90),
              elevation: 0,
              child: SizedBox(
                height: 100,
                width: 200,
                child: Row(
                  spacing: 25,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://images.pexels.com/photos/3293148/pexels-photo-3293148.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          height: 100,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      spacing: 10,
                      children: [
                        SizedBox(height: 6),
                        Text(
                          'La-Hotel',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          '2.09 mi',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 0, // Added to ensure it starts from the left
            right: 210, // Added to ensure it extends to the right
            child: Card(
              color: const Color.fromARGB(255, 89, 90, 90),
              elevation: 0,
              child: SizedBox(
                height: 100,
                width: 200,
                child: Row(
                  spacing: 15,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://images.pexels.com/photos/1005417/pexels-photo-1005417.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          height: 100,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      spacing: 10,
                      children: [
                        SizedBox(height: 6),
                        Text(
                          'Lemon Garden',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          '2.09 mi',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 50, // Added to ensure it starts from the left
            right: 50,
            bottom: 50, // Added to ensure it extends to the right
            child: Card(
              color: const Color.fromARGB(255, 89, 90, 90),
              elevation: 0,
              child: SizedBox(
                height: 100,
                width: 200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Niladri Reservior',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey.shade400,
                          ),
                          Text(
                            'Tekerghat, Sunamgnj',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time_rounded,
                            color: Colors.grey.shade400,
                          ),
                          Text(
                            '45 Minutes',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          context.goNamed('schedulepage');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 29, 85, 227),
                          minimumSize: const Size(double.infinity, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          'See on the map',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
