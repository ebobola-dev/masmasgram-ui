import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

//TODO will be redone to inheritance

class ApiNoAnswerError {
  final String message = 'The response to the request is empty';
}

class ApiUnexpectedError {
  final String message;
  ApiUnexpectedError({
    this.message = 'Unexcpected server error',
  });
}

@freezed
class ApiSingleError with _$ApiSingleError {
  const ApiSingleError._();

  factory ApiSingleError({
    required final String error,
  }) = _ApiSingleError;

  factory ApiSingleError.fromJson(Map<String, dynamic> json) =>
      _$ApiSingleErrorFromJson(json);
}

@freezed
class ApiMultipleError with _$ApiMultipleError {
  const ApiMultipleError._();

  factory ApiMultipleError({
    required final List<String> errors,
  }) = _ApiMultipleError;

  factory ApiMultipleError.fromJson(Map<String, dynamic> json) =>
      _$ApiMultipleErrorFromJson(json);
}
