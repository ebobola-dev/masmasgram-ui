// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as String,
      fromUser: User.fromJson(json['fromUser'] as Map<String, dynamic>),
      datetime: DateTime.parse(json['datetime'] as String),
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String?,
      likesCount: json['likesCount'] as int,
      commentsCount: json['commentsCount'] as int,
      favoritesCount: json['favoritesCount'] as int,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'fromUser': instance.fromUser,
      'datetime': instance.datetime.toIso8601String(),
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'favoritesCount': instance.favoritesCount,
    };
