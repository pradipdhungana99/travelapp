import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel_app/message/widgets/message_card.dart';

class MessageHome extends StatelessWidget {
  const MessageHome({super.key});

  static List<Message> messages = [
    Message(
      profileImage:
          'https://images.pexels.com/photos/1274922/pexels-photo-1274922.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      lastMessage: 'Hi',
      lastSentAt: DateTime.now(),
      userName: 'Pradip',
      isSeen: false,
    ),
    Message(
      profileImage:
          'https://images.pexels.com/photos/1274922/pexels-photo-1274922.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      lastMessage: 'K gardai chas',
      lastSentAt: DateTime.now(),
      userName: 'Projwal',
      isSeen: true,
    ),
    Message(
      profileImage:
          'https://images.pexels.com/photos/1274922/pexels-photo-1274922.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      lastMessage: 'HELLOOO',
      lastSentAt: DateTime.now(),
      userName: 'Yogesh',
      isTyping: true,
      isSeen: true,
    ),
    Message(
      profileImage:
          'https://images.pexels.com/photos/1274922/pexels-photo-1274922.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      lastMessage: 'Thankyou',
      lastSentAt: DateTime.now(),
      userName: 'Navina',
      isSeen: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Messages'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Messages',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Icon(Icons.edit)
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search for chats & messages',
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return MessageCard(
                  message: messages[index],
                  status: UserStatus
                      .values[Random().nextInt(UserStatus.values.length)],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 8,
                );
              },
              itemCount: messages.length,
            )
          ],
        ),
      ),
    );
  }
}
