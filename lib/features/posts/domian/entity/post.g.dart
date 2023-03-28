// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as String,
      fromUser: User.fromJson(json['from_user'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      description: json['description'] as String?,
      likesCount: json['likes_count'] as int,
      commentsCount: json['comments_count'] as int,
      favoritesCount: json['favorites_count'] as int,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'from_user': instance.fromUser.toJson(),
      'date': instance.date.toIso8601String(),
      'description': instance.description,
      'likes_count': instance.likesCount,
      'comments_count': instance.commentsCount,
      'favorites_count': instance.favoritesCount,
    };
