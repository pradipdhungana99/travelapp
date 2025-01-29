import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_content.g.dart';
part 'message_content.freezed.dart';

@freezed
class MessageContent with _$MessageContent {
  const factory MessageContent({
    required String message,
    required DateTime sentAt,
    required String userProfileImageUrl,
    @Default(false) bool? isSeen,
    required String user,
    required DateTime recievedAt,
  }) = _MessageContent;
  factory MessageContent.fromJson(Map<String, dynamic> json) =>
      _$MessageContentFromJson(json);
}
