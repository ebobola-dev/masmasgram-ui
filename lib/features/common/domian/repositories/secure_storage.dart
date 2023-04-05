import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:masmasgram_ui/assets/strings/local_keys.dart';

abstract class ISecureStorageRepository {
  Future<void> writeToken(String token);
  Future<String?> readToken();
}

class SecureStorageRepository implements ISecureStorageRepository {
  late final FlutterSecureStorage _secureStorage;

  SecureStorageRepository() {
    _secureStorage = FlutterSecureStorage();
  }

  @override
  Future<void> writeToken(String token) async {
    await _secureStorage.write(key: LocalKeys.tokenKey, value: token);
  }

  @override
  Future<String?> readToken() async {
    return await _secureStorage.read(key: LocalKeys.tokenKey);
  }
}
