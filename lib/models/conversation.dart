import 'package:json_annotation/json_annotation.dart';
import 'package:travel_app/models/message_content.dart';
part 'conversation.g.dart';

@JsonSerializable()
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
  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
  Map<String, dynamic> toJson() => _$ConversationToJson(this);
}
