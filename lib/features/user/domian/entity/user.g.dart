// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      username: json['username'] as String,
      fullname: json['fullname'] as String?,
      isOnline: json['isOnline'] as bool,
      postCount: json['postCount'] as int,
      followersCount: json['followersCount'] as int,
      followsCount: json['followsCount'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullname': instance.fullname,
      'isOnline': instance.isOnline,
      'postCount': instance.postCount,
      'followersCount': instance.followersCount,
      'followsCount': instance.followsCount,
    };
