// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      username: json['username'] as String,
      fullname: json['fullname'] as String?,
      isOnline: json['is_online'] as bool,
      postCount: json['post_count'] as int,
      followersCount: json['followers_count'] as int,
      followsCount: json['follows_count'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullname': instance.fullname,
      'is_online': instance.isOnline,
      'post_count': instance.postCount,
      'followers_count': instance.followersCount,
      'follows_count': instance.followsCount,
    };
