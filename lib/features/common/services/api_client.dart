import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:masmasgram_ui/assets/strings/dev.dart';
import 'package:masmasgram_ui/assets/strings/urls.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/login_result/login_result.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/registation_result/registation_result.dart';
import 'package:masmasgram_ui/features/common/domian/entity/api_errors/api_error.dart';

import 'package:masmasgram_ui/features/common/domian/entity/models_settings/models_settings.dart';
import 'package:masmasgram_ui/features/common/domian/entity/request_result/request_result.dart';
import 'package:masmasgram_ui/features/user/domian/entity/user/user.dart';

class ApiClient {
  final Dio _dio;

  const ApiClient(this._dio);

  void setAuthToken(String authToken) {
    _dio.options.headers["Authorization"] = "Bearer $authToken";
  }

  void removeAuthToken() {
    _dio.options.headers.remove("Authorization");
  }

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
        name: 'ApiClient | _handleResponseError',
      );
      if (response.statusCode == 200) {
        return null;
      } else {
        return ApiError.fromJson(responseData);
      }
    } catch (error) {
      return unknownError;
    }
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

  Future<RequestResult> registration({
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
      return SuccessfullRequest<RegistrationResult>(
        data: RegistrationResult.fromJson(response.data),
      );
    } on DioError catch (dioError) {
      log(
        'ERROR',
        name: 'ApiClient | registration',
      );
      final error = _handleResponseError(dioError.response);
      //? _handleResponseError can return [null] if status code is 200
      return RequestFailed(error: error ?? unknownError);
    }
  }

  Future<RequestResult> login({
    required String username,
    required String password,
  }) async {
    try {
      if (requestFakeDelay) {
        await Future.delayed(requestFakeDelayDuration);
      }
      final response = await _dio.post(
        Urls.login,
        data: {
          'username': username,
          'password': password,
        },
      );
      return SuccessfullRequest<LoginResult>(
        data: LoginResult.fromJson(response.data),
      );
    } on DioError catch (dioError) {
      log(
        'ERROR',
        name: 'ApiClient | login',
      );
      final error = _handleResponseError(dioError.response);
      //? _handleResponseError can return [null] if status code is 200
      return RequestFailed(error: error ?? unknownError);
    }
  }

  Future<RequestResult> getMyUserData() async {
    try {
      if (requestFakeDelay) {
        await Future.delayed(requestFakeDelayDuration);
      }
      final response = await _dio.get(Urls.getMyUserData);
      return SuccessfullRequest<User>(
        data: User.fromJson(response.data),
      );
    } on DioError catch (dioError) {
      log(
        'ERROR',
        name: 'ApiClient | getMyUserData',
      );
      final error = _handleResponseError(dioError.response);
      //? _handleResponseError can return [null] if status code is 200
      return RequestFailed(error: error ?? unknownError);
    }
  }
}
