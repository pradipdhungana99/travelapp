import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/controllers/message_controller.dart';
import 'package:travel_app/message/widgets/message_card.dart';
import 'package:travel_app/models/message_content.dart';

class MessageDetails extends StatefulWidget {
  final Conversation conversation;

  const MessageDetails({super.key, required this.conversation});

  @override
  State<MessageDetails> createState() => _MessageDetailsState();
}

class _MessageDetailsState extends State<MessageDetails> {
  final textPrintController = TextEditingController();

  Widget _buildMessage(int index) {
    final messageContent = widget.conversation.messages[index];
    if (messageContent.message == widget.conversation.userName) {
      return SentMessageWidget(content: messageContent);
    }
    return RecievedMessageWidget(receivedContent: messageContent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Column(
          children: [
            Text(
              'Pradip Dhungana',
            ),
            Text(
              'Active Now',
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(style: BorderStyle.solid))),
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            for (int i = 0; i < widget.conversation.messages.length; i++)
              _buildMessage(i),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: textPrintController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.attach_file),
                      hintText: 'Type your message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      context.read<MessageController>().sendMessage(
                            MessageContent(
                              message: textPrintController.text,
                              sentAt: DateTime.now(),
                              userProfileImageUrl: '',
                              user: widget.conversation.userName,
                              recievedAt: DateTime.now(),
                            ),
                          );
                      textPrintController.clear();
                    },
                    icon: Icon(Icons.send))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SentMessageWidget extends StatelessWidget {
  final MessageContent content;

  const SentMessageWidget({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 300,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
          color: Colors.lightBlue.shade100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(content.message),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(DateFormat.jm().format(content.sentAt)),
                Icon(Icons.check)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RecievedMessageWidget extends StatelessWidget {
  final MessageContent receivedContent;
  const RecievedMessageWidget({
    super.key,
    required this.receivedContent,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(receivedContent.userProfileImageUrl),
          ),
          Container(
            width: 300,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              color: const Color.fromARGB(255, 242, 246, 247),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  receivedContent.message,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(DateFormat.jm().format(receivedContent.recievedAt)),
                    Icon(Icons.check)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
