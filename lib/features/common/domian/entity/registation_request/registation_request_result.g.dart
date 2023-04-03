// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registation_request_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessfullyRegistered _$$SuccessfullyRegisteredFromJson(
        Map<String, dynamic> json) =>
    _$SuccessfullyRegistered(
      isAvatarSaved: json['is_avatar_saved'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessfullyRegisteredToJson(
        _$SuccessfullyRegistered instance) =>
    <String, dynamic>{
      'is_avatar_saved': instance.isAvatarSaved,
      'runtimeType': instance.$type,
    };

_$RegistrationFailed _$$RegistrationFailedFromJson(Map<String, dynamic> json) =>
    _$RegistrationFailed(
      error: ApiError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RegistrationFailedToJson(
        _$RegistrationFailed instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };
