import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 30,
          ),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit_outlined, size: 30),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: CircleAvatar(
              maxRadius: 80,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
            ),
          ),
          Text(
            'Leonardo',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'leonardo@gmail.com',
            style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [Text('Reward Points'), Text('1000')],
                ),
              ),
              Expanded(
                child: Column(
                  children: [Text('Reward Points'), Text('1000')],
                ),
              ),
              Expanded(
                child: Column(
                  children: [Text('Reward Points'), Text('1000')],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Edit Profile'),
            tileColor: Colors.grey.shade200,
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(Icons.bookmark_border_outlined),
            title: Text('Bookmarked'),
            tileColor: Colors.grey.shade200,
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(Icons.airplane_ticket_outlined),
            title: Text('Previous Trips'),
            tileColor: Colors.grey.shade200,
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
            tileColor: Colors.grey.shade200,
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Edit Profile'),
            tileColor: Colors.grey.shade200,
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
    );
  }
}
