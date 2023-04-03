import 'package:masmasgram_ui/features/common/domian/entity/registation_request/registation_request_result.dart';
import 'package:masmasgram_ui/features/common/services/api_client.dart';

abstract class IAuthRepository {
  Future<dynamic> checkUsernameIsExists(String username);
  Future<dynamic> registration({
    required String username,
    required String password,
    required String fullname,
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
    final registrationResult = await _aliClient.registration(
      username: username,
      password: password,
      fullname: fullname,
    );
    return registrationResult;
  }
}
