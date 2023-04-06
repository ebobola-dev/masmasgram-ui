import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:masmasgram_ui/features/common/domian/entity/api_errors/api_error.dart';

part 'request_result.freezed.dart';

@freezed
class RequestResult<T> with _$RequestResult<T> {
  const RequestResult._();

  const factory RequestResult.successfullyLoggedIn({
    required T data,
  }) = SuccessfullRequest<T>;
  const factory RequestResult.loginFailed({
    required ApiError error,
  }) = RequestFailed;
}
