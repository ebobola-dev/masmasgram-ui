import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:masmasgram_ui/assets/strings/urls.dart';
import 'package:masmasgram_ui/features/common/domian/entity/api_error.dart';

import 'package:masmasgram_ui/features/common/domian/entity/models_settings.dart';

class ApiClient {
  final Dio _dio;

  const ApiClient(this._dio);

  dynamic _handleResponseError(Response? response) {
    if (response == null) {
      return ApiNoAnswerError();
    }
    if (response.data == null) {
      return ApiNoAnswerError();
    }
    final responseData = response.data;
    log(
      'code: ${response.statusCode}',
      name: 'ApiClient',
    );
    switch (response.statusCode) {
      case 200:
        return null;
      case 400:
        log(
          'responseData runtimeType: ${responseData.runtimeType}',
          name: 'ApiClient',
        );
        if (responseData is Map<String, dynamic>) {
          if (responseData.containsKey('error')) {
            return ApiSingleError(error: responseData['error']);
          }
          if (responseData.containsKey('errors')) {
            log('errors: ${responseData['errors']}, type: ${responseData['errors'].runtimeType}');
            return ApiMultipleError(
              errors: responseData['errors'].cast<String>(),
            );
          }
          return ApiUnexpectedError();
        }
        if (responseData is String && responseData.isNotEmpty) {
          return ApiUnexpectedError(message: responseData);
        }
        return ApiUnexpectedError();
      case 500:
        if (responseData is String && responseData.isNotEmpty) {
          return ApiUnexpectedError(message: responseData);
        }
        return ApiUnexpectedError();
    }
  }

  Future<dynamic> getModelsSettings() async {
    try {
      final response = await _dio.get(Urls.getModelsSettings);
      return ModelsSettings.fromJson(response.data);
    } on DioError catch (dioError) {
      final error = _handleResponseError(dioError.response);
      return error;
    }
  }

  Future<dynamic> checkUsernameIsTaken(String username) async {
    try {
      final response = await _dio.get(Urls.checkUsername);
      return response.data['is_exists'];
    } on DioError catch (dioError) {
      final error = _handleResponseError(dioError.response);
      return error;
    }
  }

  Future<dynamic> registration({
    required String username,
    required String password,
    required String fullname,
  }) async {
    try {
      final response = await _dio.post(
        Urls.registation,
        data: FormData.fromMap({
          'username': username,
          'password': password,
          'fullname': fullname,
        }),
      );
      return response.data;
    } on DioError catch (dioError) {
      final error = _handleResponseError(dioError.response);
      return error;
    }
  }
}
