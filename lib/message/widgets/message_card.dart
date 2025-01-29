import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../models/message_content.dart';

enum UserStatus {
  active,
  offline,
  busy,
  donotdisturb,
}

class MessageCard extends StatelessWidget {
  final Conversation message;
  final UserStatus status;

  const MessageCard({
    super.key,
    required this.message,
    this.status = UserStatus.active,
  });

  Color getColorBasedOnStatus() {
    switch (status) {
      case UserStatus.active:
        return Colors.greenAccent;
      case UserStatus.offline:
        return Colors.grey;
      case UserStatus.donotdisturb:
        return Colors.red;
      case UserStatus.busy:
        return Colors.yellow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.goNamed(
          'message-details',
          pathParameters: {
            'username': message.userName,
          },
        );
      },
      leading: Stack(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(message.profileImage),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(7),
                color: getColorBasedOnStatus(),
              ),
              height: 14,
              width: 14,
            ),
          )
        ],
      ),
      title: Text(message.userName),
      subtitle: message.isTyping
          ? Text(
              'Typing...',
              style: TextStyle(color: Colors.blue),
            )
          : Text(''),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: message.isRead,
            child: Icon(Icons.check_box, color: Colors.green),
          ),
          // message.isSeen ? Icon(Icons.check) : SizedBox(),
          Visibility(
            visible: message.isSeen,
            child: Icon(Icons.check),
          ),
          Text(DateFormat.jm().format(message.lastSentAt)),
        ],
      ),
    );
  }
}

class Conversation {
  final String profileImage;
  final String userName;
  List<MessageContent> messages;
  final DateTime lastSentAt;
  final bool isSeen;
  final bool isTyping;
  final bool isRead;

  Conversation({
    required this.messages,
    required this.profileImage,
    this.isSeen = false,
    required this.lastSentAt,
    required this.userName,
    this.isTyping = false,
    this.isRead = false,
  });
}
