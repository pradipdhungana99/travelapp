// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Conversation _$ConversationFromJson(Map<String, dynamic> json) => Conversation(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      profileImage: json['profileImage'] as String,
      isSeen: json['isSeen'] as bool? ?? false,
      lastSentAt: DateTime.parse(json['lastSentAt'] as String),
      userName: json['userName'] as String,
      isTyping: json['isTyping'] as bool? ?? false,
      isRead: json['isRead'] as bool? ?? false,
    );

Map<String, dynamic> _$ConversationToJson(Conversation instance) =>
    <String, dynamic>{
      'profileImage': instance.profileImage,
      'userName': instance.userName,
      'messages': instance.messages,
      'lastSentAt': instance.lastSentAt.toIso8601String(),
      'isSeen': instance.isSeen,
      'isTyping': instance.isTyping,
      'isRead': instance.isRead,
    };
