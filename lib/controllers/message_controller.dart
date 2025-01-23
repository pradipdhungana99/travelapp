import 'package:flutter/material.dart';
import 'package:travel_app/message/message_details.dart';

class MessageController extends ChangeNotifier {
  List<MessageContent> messages = [
    MessageContent(
        message: 'Message',
        sentAt: DateTime.now(),
        userProfileImageUrl: 'userProfileImageUrl',
        user: 'sender',
        recievedAt: DateTime.now()),
    MessageContent(
        message: 'message1',
        sentAt: DateTime.now(),
        userProfileImageUrl: 'userProfileImageUrl',
        user: 'receiver',
        recievedAt: DateTime.now()),
    MessageContent(
        message: 'message2',
        sentAt: DateTime.now(),
        userProfileImageUrl: 'userProfileImageUrl',
        user: 'sender',
        recievedAt: DateTime.now()),
    MessageContent(
        message: 'message2',
        sentAt: DateTime.now(),
        userProfileImageUrl: 'userProfileImageUrl',
        user: 'sender',
        recievedAt: DateTime.now()),
    MessageContent(
        message: 'message2',
        sentAt: DateTime.now(),
        userProfileImageUrl: 'userProfileImageUrl',
        user: 'sender',
        recievedAt: DateTime.now()),
  ];
  void sendMessage(MessageContent message) {
    messages.add(message);
    notifyListeners();
  }
}
