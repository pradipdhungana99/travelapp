import 'package:flutter/material.dart';
import 'package:travel_app/message/message_details.dart';
import 'package:travel_app/message/widgets/message_card.dart';

class MessageController extends ChangeNotifier {
  List<Conversation> conversations = [
    Conversation(
      profileImage:
          'https://images.pexels.com/photos/30319457/pexels-photo-30319457/free-photo-of-close-up-portrait-of-a-domestic-cat.jpeg',
      lastSentAt: DateTime.now(),
      userName: 'Pradip Dhungana',
      isSeen: false,
      messages: [],
    ),
    Conversation(
      profileImage:
          'https://images.pexels.com/photos/30294558/pexels-photo-30294558/free-photo-of-elderly-man-smoking-in-outdoor-setting.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastSentAt: DateTime.now(),
      userName: 'Prajwal Bastola',
      isSeen: true,
      messages: [],
    ),
    Conversation(
      profileImage:
          'https://images.pexels.com/photos/30315642/pexels-photo-30315642/free-photo-of-contemplative-man-in-blue-shirt-against-blue-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastSentAt: DateTime.now(),
      userName: 'Yogesh Thapa',
      isTyping: true,
      isSeen: true,
      messages: [],
    ),
    Conversation(
      profileImage:
          'https://images.pexels.com/photos/30283478/pexels-photo-30283478/free-photo-of-stylish-portrait-of-woman-in-hoodie-at-night.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastSentAt: DateTime.now(),
      userName: 'Navina Magar',
      isSeen: false,
      messages: [],
    ),
    Conversation(
        profileImage:
            'https://images.pexels.com/photos/30282527/pexels-photo-30282527/free-photo-of-portrait-of-a-man-in-black-tank-top-with-moody-lighting.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        lastSentAt: DateTime.now(),
        userName: 'Prashant',
        messages: [],
        // isSeen: true,
        isRead: true),
    Conversation(
      profileImage:
          'https://images.pexels.com/photos/66142/pexels-photo-66142.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastSentAt: DateTime.now(),
      userName: 'Nissan Karki',
      isSeen: false,
      messages: [],
    ),
    Conversation(
      profileImage:
          'https://images.pexels.com/photos/29901210/pexels-photo-29901210/free-photo-of-vibrant-cosplay-at-san-jose-convention-center.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      lastSentAt: DateTime.now(),
      userName: 'Promise Nepal',
      isSeen: true,
      messages: [],
    ),
  ];

  // void sendMessage(Conversation messages) {
  //   conversations.add(messages);
  //   notifyListeners();
  // }

  void addConversation(String name) {
    conversations.add(Conversation(
        messages: [],
        profileImage: 'profileImage',
        lastSentAt: DateTime.now(),
        userName: name));
    notifyListeners();
  }

  void sendMessage(MessageContent message) {
    for (var i = 0; i < conversations.length; i++) {
      if (conversations[i].userName == message.user) {
        conversations[i].messages.add(message);
        notifyListeners();
        return;
      }
    }
  }
}
