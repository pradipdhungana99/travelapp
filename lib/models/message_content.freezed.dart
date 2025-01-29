// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageContent _$MessageContentFromJson(Map<String, dynamic> json) {
  return _MessageContent.fromJson(json);
}

/// @nodoc
mixin _$MessageContent {
  String get message => throw _privateConstructorUsedError;
  DateTime get sentAt => throw _privateConstructorUsedError;
  String get userProfileImageUrl => throw _privateConstructorUsedError;
  bool? get isSeen => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  DateTime get recievedAt => throw _privateConstructorUsedError;

  /// Serializes this MessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageContentCopyWith<MessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageContentCopyWith<$Res> {
  factory $MessageContentCopyWith(
          MessageContent value, $Res Function(MessageContent) then) =
      _$MessageContentCopyWithImpl<$Res, MessageContent>;
  @useResult
  $Res call(
      {String message,
      DateTime sentAt,
      String userProfileImageUrl,
      bool? isSeen,
      String user,
      DateTime recievedAt});
}

/// @nodoc
class _$MessageContentCopyWithImpl<$Res, $Val extends MessageContent>
    implements $MessageContentCopyWith<$Res> {
  _$MessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? sentAt = null,
    Object? userProfileImageUrl = null,
    Object? isSeen = freezed,
    Object? user = null,
    Object? recievedAt = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userProfileImageUrl: null == userProfileImageUrl
          ? _value.userProfileImageUrl
          : userProfileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      recievedAt: null == recievedAt
          ? _value.recievedAt
          : recievedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageContentImplCopyWith<$Res>
    implements $MessageContentCopyWith<$Res> {
  factory _$$MessageContentImplCopyWith(_$MessageContentImpl value,
          $Res Function(_$MessageContentImpl) then) =
      __$$MessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      DateTime sentAt,
      String userProfileImageUrl,
      bool? isSeen,
      String user,
      DateTime recievedAt});
}

/// @nodoc
class __$$MessageContentImplCopyWithImpl<$Res>
    extends _$MessageContentCopyWithImpl<$Res, _$MessageContentImpl>
    implements _$$MessageContentImplCopyWith<$Res> {
  __$$MessageContentImplCopyWithImpl(
      _$MessageContentImpl _value, $Res Function(_$MessageContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? sentAt = null,
    Object? userProfileImageUrl = null,
    Object? isSeen = freezed,
    Object? user = null,
    Object? recievedAt = null,
  }) {
    return _then(_$MessageContentImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userProfileImageUrl: null == userProfileImageUrl
          ? _value.userProfileImageUrl
          : userProfileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      recievedAt: null == recievedAt
          ? _value.recievedAt
          : recievedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageContentImpl
    with DiagnosticableTreeMixin
    implements _MessageContent {
  const _$MessageContentImpl(
      {required this.message,
      required this.sentAt,
      required this.userProfileImageUrl,
      this.isSeen = false,
      required this.user,
      required this.recievedAt});

  factory _$MessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageContentImplFromJson(json);

  @override
  final String message;
  @override
  final DateTime sentAt;
  @override
  final String userProfileImageUrl;
  @override
  @JsonKey()
  final bool? isSeen;
  @override
  final String user;
  @override
  final DateTime recievedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageContent(message: $message, sentAt: $sentAt, userProfileImageUrl: $userProfileImageUrl, isSeen: $isSeen, user: $user, recievedAt: $recievedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageContent'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('sentAt', sentAt))
      ..add(DiagnosticsProperty('userProfileImageUrl', userProfileImageUrl))
      ..add(DiagnosticsProperty('isSeen', isSeen))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('recievedAt', recievedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageContentImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.userProfileImageUrl, userProfileImageUrl) ||
                other.userProfileImageUrl == userProfileImageUrl) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.recievedAt, recievedAt) ||
                other.recievedAt == recievedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, sentAt,
      userProfileImageUrl, isSeen, user, recievedAt);

  /// Create a copy of MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageContentImplCopyWith<_$MessageContentImpl> get copyWith =>
      __$$MessageContentImplCopyWithImpl<_$MessageContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageContentImplToJson(
      this,
    );
  }
}

abstract class _MessageContent implements MessageContent {
  const factory _MessageContent(
      {required final String message,
      required final DateTime sentAt,
      required final String userProfileImageUrl,
      final bool? isSeen,
      required final String user,
      required final DateTime recievedAt}) = _$MessageContentImpl;

  factory _MessageContent.fromJson(Map<String, dynamic> json) =
      _$MessageContentImpl.fromJson;

  @override
  String get message;
  @override
  DateTime get sentAt;
  @override
  String get userProfileImageUrl;
  @override
  bool? get isSeen;
  @override
  String get user;
  @override
  DateTime get recievedAt;

  /// Create a copy of MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageContentImplCopyWith<_$MessageContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
