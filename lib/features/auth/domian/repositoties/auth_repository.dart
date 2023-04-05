import 'package:masmasgram_ui/features/common/domian/entity/login_request/login_request_result.dart';
import 'package:masmasgram_ui/features/common/domian/entity/registation_request/registation_request_result.dart';
import 'package:masmasgram_ui/features/common/services/api_client.dart';

abstract class IAuthRepository {
  Future<dynamic> checkUsernameIsExists(String username);
  Future<RegistrationRequestResult> registration({
    required String username,
    required String password,
    required String fullname,
  });
  Future<LoginRequestResult> login({
    required String username,
    required String password,
  });
}

class AuthRepository implements IAuthRepository {
  final ApiClient _aliClient;

  const AuthRepository(this._aliClient);

  @override
  Future<dynamic> checkUsernameIsExists(String username) async {
    final isTaken = await _aliClient.checkUsernameIsTaken(username);
    return isTaken;
  }

  @override
  Future<RegistrationRequestResult> registration({
    required String username,
    required String password,
    required String fullname,
  }) async {
    return await _aliClient.registration(
      username: username,
      password: password,
      fullname: fullname,
    );
  }

  @override
  Future<LoginRequestResult> login({
    required String username,
    required String password,
  }) async {
    return await _aliClient.login(
      username: username,
      password: password,
    );
  }
}
