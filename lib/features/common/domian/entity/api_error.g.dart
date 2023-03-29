// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiSingleError _$$_ApiSingleErrorFromJson(Map<String, dynamic> json) =>
    _$_ApiSingleError(
      error: json['error'] as String,
    );

Map<String, dynamic> _$$_ApiSingleErrorToJson(_$_ApiSingleError instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$_ApiMultipleError _$$_ApiMultipleErrorFromJson(Map<String, dynamic> json) =>
    _$_ApiMultipleError(
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ApiMultipleErrorToJson(_$_ApiMultipleError instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
