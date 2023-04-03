import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:masmasgram_ui/features/common/domian/entity/api_error.dart';

part 'registation_request_result.freezed.dart';
part 'registation_request_result.g.dart';

@freezed
class RegistrationRequestResult with _$RegistrationRequestResult {
  const RegistrationRequestResult._();

  const factory RegistrationRequestResult.successfullyRegistered({
    required bool isAvatarSaved,
  }) = SuccessfullyRegistered;
  const factory RegistrationRequestResult.registrationFailed({
    required ApiError error,
  }) = RegistrationFailed;

  factory RegistrationRequestResult.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestResultFromJson(json);
}
