import 'package:freezed_annotation/freezed_annotation.dart';

part 'models_settings.freezed.dart';
part 'models_settings.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake)
class ModelsSettings with _$ModelsSettings {
  const ModelsSettings._();

  factory ModelsSettings({
    required final FieldSettings username,
    required final FieldSettings password,
    required final FieldSettings fullname,
    required final List<String> allowedImageExtensions,
  }) = _ModelsSettings;

  factory ModelsSettings.fromJson(Map<String, dynamic> json) =>
      _$ModelsSettingsFromJson(json);
}

@freezed
class FieldSettings with _$FieldSettings {
  const FieldSettings._();

  factory FieldSettings({
    required final int minLen,
    required final int maxLen,
  }) = _FieldSettings;

  factory FieldSettings.fromJson(Map<String, dynamic> json) =>
      _$FieldSettingsFromJson(json);
}
