import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // final places = [
    //   'https://images.pexels.com/photos/1078983/pexels-photo-1078983.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    //   'https://images.pexels.com/photos/1486974/pexels-photo-1486974.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    //   'https://images.pexels.com/photos/532263/pexels-photo-532263.jpeg',
    //   'https://images.pexels.com/photos/533769/pexels-photo-533769.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    // ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    'https://images.pexels.com/photos/8159657/pexels-photo-8159657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain),
              ),
              Text(
                'John Doe',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add))
        ],
        elevation: 0,
      ),
      body: Column(
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
                    text: ' world!', style: TextStyle(color: Colors.deepOrange))
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
          // ListView.separated(itemBuilder: places[i, separatorBuilder: separatorBuilder, itemCount: itemCount)
        ],
      ),
    );
  }
}
