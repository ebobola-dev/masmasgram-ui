// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      id: json['id'] as String,
      messagesCount: json['messages_count'] as int,
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMessage: json['last_message'] == null
          ? null
          : Message.fromJson(json['last_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'messages_count': instance.messagesCount,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'last_message': instance.lastMessage?.toJson(),
    };
