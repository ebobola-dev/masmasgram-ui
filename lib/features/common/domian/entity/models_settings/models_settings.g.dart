// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelsSettings _$$_ModelsSettingsFromJson(Map<String, dynamic> json) =>
    _$_ModelsSettings(
      username:
          FieldSettings.fromJson(json['username'] as Map<String, dynamic>),
      password:
          FieldSettings.fromJson(json['password'] as Map<String, dynamic>),
      fullname:
          FieldSettings.fromJson(json['fullname'] as Map<String, dynamic>),
      allowedImageExtensions:
          (json['allowed_image_extensions'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$_ModelsSettingsToJson(_$_ModelsSettings instance) =>
    <String, dynamic>{
      'username': instance.username.toJson(),
      'password': instance.password.toJson(),
      'fullname': instance.fullname.toJson(),
      'allowed_image_extensions': instance.allowedImageExtensions,
    };

_$_FieldSettings _$$_FieldSettingsFromJson(Map<String, dynamic> json) =>
    _$_FieldSettings(
      minLen: json['min_len'] as int,
      maxLen: json['max_len'] as int,
    );

Map<String, dynamic> _$$_FieldSettingsToJson(_$_FieldSettings instance) =>
    <String, dynamic>{
      'min_len': instance.minLen,
      'max_len': instance.maxLen,
    };
