// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageContent _$MessageContentFromJson(Map<String, dynamic> json) =>
    MessageContent(
      message: json['message'] as String,
      sentAt: DateTime.parse(json['sentAt'] as String),
      userProfileImageUrl: json['userProfileImageUrl'] as String,
      isSeen: json['isSeen'] as bool? ?? false,
      user: json['user'] as String,
      recievedAt: DateTime.parse(json['recievedAt'] as String),
    );

Map<String, dynamic> _$MessageContentToJson(MessageContent instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sentAt': instance.sentAt.toIso8601String(),
      'userProfileImageUrl': instance.userProfileImageUrl,
      'isSeen': instance.isSeen,
      'user': instance.user,
      'recievedAt': instance.recievedAt.toIso8601String(),
    };
