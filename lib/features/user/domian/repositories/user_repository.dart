import 'package:masmasgram_ui/features/common/domian/entity/request_result/request_result.dart';
import 'package:masmasgram_ui/features/common/services/api_client.dart';

abstract class IUserRepository {
  Future<RequestResult> getMyUserData();
}

class UserRepository implements IUserRepository {
  final ApiClient _apiClient;

  const UserRepository(this._apiClient);

  @override
  Future<RequestResult> getMyUserData() async {
    return await _apiClient.getMyUserData();
  }
}
