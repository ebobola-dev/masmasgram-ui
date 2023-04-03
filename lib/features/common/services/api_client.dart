import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:masmasgram_ui/assets/strings/dev.dart';
import 'package:masmasgram_ui/assets/strings/urls.dart';
import 'package:masmasgram_ui/features/common/domian/entity/api_error.dart';

import 'package:masmasgram_ui/features/common/domian/entity/models_settings.dart';
import 'package:masmasgram_ui/features/common/domian/entity/registation_request/registation_request_result.dart';

class ApiClient {
  final Dio _dio;

  const ApiClient(this._dio);

  ApiError? _handleResponseError(Response? response) {
    try {
      if (response == null) {
        return noAnswerError;
      }
      if (response.data == null) {
        return noAnswerError;
      }
      final responseData = response.data;
      log(
        'code: ${response.statusCode}, body: $responseData',
        name: 'ApiClient',
      );
      switch (response.statusCode) {
        case 200:
          return null;
        case 400:
          return ApiError.fromJson(responseData);
        case 500:
          return ApiError.fromJson(responseData);
      }
    } catch (error) {
      return unknownError;
    }
    return null;
  }

  Future<dynamic> getModelsSettings() async {
    try {
      if (requestFakeDelay) {
        await Future.delayed(requestFakeDelayDuration);
      }
      final response = await _dio.get(Urls.getModelsSettings);
      return ModelsSettings.fromJson(response.data);
    } on DioError catch (dioError) {
      final error = _handleResponseError(dioError.response);
      return error;
    }
  }

  Future<dynamic> checkUsernameIsTaken(String username) async {
    try {
      if (requestFakeDelay) {
        await Future.delayed(requestFakeDelayDuration);
      }
      final response = await _dio.get(Urls.checkUsername);
      return response.data['is_exists'];
    } on DioError catch (dioError) {
      final error = _handleResponseError(dioError.response);
      return error;
    }
  }

  Future<RegistrationRequestResult> registration({
    required String username,
    required String password,
    required String fullname,
  }) async {
    try {
      if (requestFakeDelay) {
        await Future.delayed(requestFakeDelayDuration);
      }
      final response = await _dio.post(
        Urls.registation,
        data: FormData.fromMap({
          'username': username,
          'password': password,
          'fullname': fullname,
        }),
      );
      return SuccessfullyRegistered.fromJson(response.data);
    } on DioError catch (dioError) {
      log(
        '[registration fetch] ERROR',
        name: 'ApiClient',
      );
      final error = _handleResponseError(dioError.response);
      //? _handleResponseError can return [null] if status code is 200
      return RegistrationFailed(error: error ?? unknownError);
    }
  }
}
