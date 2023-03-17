// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String?,
      isOnline: json['isOnline'] as bool,
      avatarUrl: json['avatarUrl'] as String,
      postCount: json['postCount'] as int,
      followersCount: json['followersCount'] as int,
      followsCount: json['followsCount'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'isOnline': instance.isOnline,
      'avatarUrl': instance.avatarUrl,
      'postCount': instance.postCount,
      'followersCount': instance.followersCount,
      'followsCount': instance.followsCount,
    };
