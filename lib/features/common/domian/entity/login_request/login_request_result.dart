import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:masmasgram_ui/features/common/domian/entity/api_errors/api_error.dart';

part 'login_request_result.freezed.dart';
part 'login_request_result.g.dart';

@freezed
class LoginRequestResult with _$LoginRequestResult {
  const LoginRequestResult._();

  const factory LoginRequestResult.successfullyLoggedIn({
    required String token,
  }) = SuccessfullyLoggedIn;
  const factory LoginRequestResult.loginFailed({
    required ApiError error,
  }) = LoginFailed;

  factory LoginRequestResult.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestResultFromJson(json);
}
