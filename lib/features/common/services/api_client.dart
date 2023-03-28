import 'package:dio/dio.dart';
import 'package:masmasgram_ui/assets/strings/urls.dart';

import 'package:masmasgram_ui/features/common/domian/entity/models_settings.dart';

class ApiClient {
  final Dio _dio;

  const ApiClient(this._dio);

  Future<ModelsSettings?> getModelsSettings() async {
    final response = await _dio.get(Urls.getModelsSettings);
    if (response.data != null) {
      return ModelsSettings.fromJson(response.data);
    }
    return null;
  }

  Future<bool?> checkUsernameIsTaken(String username) async {
    final response = await _dio.get(Urls.checkUsername);
    if (response.data != null) {
      return response.data['is_exists'];
    }
    return null;
  }
}
