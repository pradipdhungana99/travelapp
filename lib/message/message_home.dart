import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel_app/message/widgets/message_card.dart';

class MessageHome extends StatelessWidget {
  const MessageHome({super.key});

  static List<Message> messages = [
    Message(
      profileImage:
          'https://images.pexels.com/photos/30319457/pexels-photo-30319457/free-photo-of-close-up-portrait-of-a-domestic-cat.jpeg',
      lastMessage: 'Yoo',
      lastSentAt: DateTime.now(),
      userName: 'Pradip Dhungana',
      isSeen: false,
    ),
    Message(
      profileImage:
          'https://images.pexels.com/photos/30294558/pexels-photo-30294558/free-photo-of-elderly-man-smoking-in-outdoor-setting.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastMessage: 'Kaa ho doss, intern aaune haina?',
      lastSentAt: DateTime.now(),
      userName: 'Prajwal Bastola',
      isSeen: true,
    ),
    Message(
      profileImage:
          'https://images.pexels.com/photos/30315642/pexels-photo-30315642/free-photo-of-contemplative-man-in-blue-shirt-against-blue-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastMessage: 'Kata ho bhai haru, aaune haina?',
      lastSentAt: DateTime.now(),
      userName: 'Yogesh Thapa',
      isTyping: true,
      isSeen: true,
    ),
    Message(
      profileImage:
          'https://images.pexels.com/photos/30283478/pexels-photo-30283478/free-photo-of-stylish-portrait-of-woman-in-hoodie-at-night.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastMessage: 'What is up, didi',
      lastSentAt: DateTime.now(),
      userName: 'Navina Magar',
      isSeen: false,
    ),
    Message(
        profileImage:
            'https://images.pexels.com/photos/30282527/pexels-photo-30282527/free-photo-of-portrait-of-a-man-in-black-tank-top-with-moody-lighting.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        lastMessage: 'Yo, how you doing?',
        lastSentAt: DateTime.now(),
        userName: 'Prashant',
        // isSeen: true,
        isRead: true),
    Message(
      profileImage:
          'https://images.pexels.com/photos/66142/pexels-photo-66142.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastMessage: 'Kata ho?',
      lastSentAt: DateTime.now(),
      userName: 'Nissan Karki',
      isSeen: false,
    ),
    Message(
      profileImage:
          'https://images.pexels.com/photos/29901210/pexels-photo-29901210/free-photo-of-vibrant-cosplay-at-san-jose-convention-center.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastMessage: 'Dost, Snooker hanna jaam',
      lastSentAt: DateTime.now(),
      userName: 'Promise Nepal',
      isSeen: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Messages'),
        actions: [
          Icon(Icons.more_vert),
        ],
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
