import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          'Notification Page',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Clear All',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent',
                  style: TextStyle(color: Colors.blue, fontSize: 22),
                ),
                Text(
                  'Earlier',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  'Archieved',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/9604304/pexels-photo-9604304.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
            onTap: () {},
            title: Text(
              'Super Offer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Get 60% off in our first booking'),
            trailing: Text(
              DateFormat.jm().format(
                DateTime.now(),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/3692621/pexels-photo-3692621.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
            onTap: () {},
            title: Text('Super Offer',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('This is a notification'),
            trailing: Text(
              DateFormat.jm().format(
                DateTime.now(),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/6688950/pexels-photo-6688950.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
            onTap: () {},
            title: Text('Super Offer',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('This is a notification'),
            trailing: Text(
              DateFormat.jm().format(
                DateTime.now(),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/8429061/pexels-photo-8429061.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
            onTap: () {},
            title: Text('Super Offer',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('This is a notification'),
            trailing: Text(
              DateFormat.jm().format(
                DateTime.now(),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
            onTap: () {},
            title: Text('Super Offer',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('This is a notification'),
            trailing: Text(
              DateFormat.jm().format(
                DateTime.now(),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/2495725/pexels-photo-2495725.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
            onTap: () {},
            title: Text('Super Offer',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('This is a notification'),
            trailing: Text(
              DateFormat.jm().format(
                DateTime.now(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
