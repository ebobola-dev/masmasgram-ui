import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError with _$ApiError {
  const ApiError._();

  const factory ApiError({
    required final List<String> ruErrors,
    required final List<String> euErrors,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}

const noAnswerError = const ApiError(
  euErrors: ['No answer from the server'],
  ruErrors: ['Нет ответа от сервера'],
);
const unknownError = const ApiError(
  euErrors: ['Unknown server error'],
  ruErrors: ['Неизвестная ошибка'],
);
