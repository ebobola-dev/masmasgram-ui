import 'package:freezed_annotation/freezed_annotation.dart';

part 'registation_result.freezed.dart';
part 'registation_result.g.dart';

@freezed
class RegistrationResult with _$RegistrationResult {
  const RegistrationResult._();

  const factory RegistrationResult({
    required bool isAvatarSaved,
  }) = _RegistrationResult;

  factory RegistrationResult.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResultFromJson(json);
}
