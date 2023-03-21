
import 'package:dio/dio.dart';
import 'package:masmasgram_ui/assets/strings/urls.dart';

class ApiClient {
  final Dio _dio;

  const ApiClient(this._dio);

  Future<bool?> checkUsernameIsTaken(String username) async {
    final response = await _dio.get(Urls.checkUsername);
    if (response.data != null) {
      return response.data['is_exists'];
    }
    return null;
  }
}
