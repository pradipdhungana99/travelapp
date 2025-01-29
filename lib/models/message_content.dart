import 'package:json_annotation/json_annotation.dart';
part 'message_content.g.dart';

@JsonSerializable()
class MessageContent {
  final String message;
  final DateTime sentAt;
  final String userProfileImageUrl;
  final bool isSeen;
  final String user;
  final DateTime recievedAt;

  MessageContent({
    required this.message,
    required this.sentAt,
    required this.userProfileImageUrl,
    this.isSeen = false,
    required this.user,
    required this.recievedAt,
  });
  factory MessageContent.fromJson(Map<String, dynamic> json) =>
      _$MessageContentFromJson(json);
  Map<String, dynamic> toJson() => _$MessageContentToJson(this);
}
