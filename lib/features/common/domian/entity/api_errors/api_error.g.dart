// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiError _$$_ApiErrorFromJson(Map<String, dynamic> json) => _$_ApiError(
      ruErrors:
          (json['ru_errors'] as List<dynamic>).map((e) => e as String).toList(),
      euErrors:
          (json['eu_errors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ApiErrorToJson(_$_ApiError instance) =>
    <String, dynamic>{
      'ru_errors': instance.ruErrors,
      'eu_errors': instance.euErrors,
    };
