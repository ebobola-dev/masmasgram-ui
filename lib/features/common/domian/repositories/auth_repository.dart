import 'package:masmasgram_ui/features/auth/domian/entity/login_result/login_result.dart';
import 'package:masmasgram_ui/features/common/domian/entity/request_result/request_result.dart';
import 'package:masmasgram_ui/features/common/services/api_client.dart';

abstract class IAuthRepository {
  Future<RequestResult> registration({
    required String username,
    required String password,
    required String fullname,
  });
  Future<RequestResult> login({
    required String username,
    required String password,
  });
  Future<void> logout();
}

class AuthRepository implements IAuthRepository {
  final ApiClient _apiClient;

  const AuthRepository(this._apiClient);

  @override
  Future<RequestResult> registration({
    required String username,
    required String password,
    required String fullname,
  }) async {
    return await _apiClient.registration(
      username: username,
      password: password,
      fullname: fullname,
    );
  }

  @override
  Future<RequestResult> login({
    required String username,
    required String password,
  }) async {
    final loginResult = await _apiClient.login(
      username: username,
      password: password,
    );
    if (loginResult is SuccessfullRequest<LoginResult>) {
      _apiClient.setAuthToken(loginResult.data.token);
    }
    return loginResult;
  }

  @override
  Future<void> logout() async {
    //TODO logout
    _apiClient.removeAuthToken();
    return null;
  }
}
