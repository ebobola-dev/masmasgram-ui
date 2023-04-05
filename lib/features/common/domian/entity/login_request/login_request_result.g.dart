// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessfullyLoggedIn _$$SuccessfullyLoggedInFromJson(
        Map<String, dynamic> json) =>
    _$SuccessfullyLoggedIn(
      token: json['token'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessfullyLoggedInToJson(
        _$SuccessfullyLoggedIn instance) =>
    <String, dynamic>{
      'token': instance.token,
      'runtimeType': instance.$type,
    };

_$LoginFailed _$$LoginFailedFromJson(Map<String, dynamic> json) =>
    _$LoginFailed(
      error: ApiError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoginFailedToJson(_$LoginFailed instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };
