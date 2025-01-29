import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              leading: Icon(Icons.account_circle_rounded),
              onTap: () {
                context.goNamed('editprofilepage');
              },
              title: Text('Edit Profile'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(height: 10),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              leading: Icon(Icons.bookmark_border_outlined),
              onTap: () {},
              title: Text('Bookmarked'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(height: 10),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              leading: Icon(Icons.airplane_ticket_outlined),
              onTap: () {},
              title: Text('Previous Trips'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: () {
                context.goNamed('popularpackage');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              leading: Icon(Icons.travel_explore),
              title: Text('Version'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
