// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as String,
      chatId: json['chat_id'] as String,
      date: DateTime.parse(json['date'] as String),
      fromUser: User.fromJson(json['from_user'] as Map<String, dynamic>),
      text: json['text'] as String,
      viewed: json['viewed'] as bool,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chatId,
      'date': instance.date.toIso8601String(),
      'from_user': instance.fromUser.toJson(),
      'text': instance.text,
      'viewed': instance.viewed,
    };
