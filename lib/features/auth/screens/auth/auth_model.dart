import 'package:elementary/elementary.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/common/domian/entity/models_settings.dart';
import 'package:masmasgram_ui/features/common/domian/repositories/models_settings.dart';

class AuthModel extends ElementaryModel {
  final ModelsSettingsRepository _modelsSettingsRepo;
  String? _token;
  AuthMode _currentAuthMode = AuthMode.signUp;

  AuthModel({
    required ModelsSettingsRepository modelsSettingsRepository,
  }) : _modelsSettingsRepo = modelsSettingsRepository;

  String? get token => _token;
  AuthMode get currentAuthMode => _currentAuthMode;

  Future<ModelsSettings?> initializeModelsSettings() async {
    final modelsSettings = await _modelsSettingsRepo.initialize();
    return modelsSettings;
  }

  AuthMode changeAuthMode() {
    if (_currentAuthMode == AuthMode.signUp) {
      _currentAuthMode = AuthMode.signIn;
    } else {
      _currentAuthMode = AuthMode.signUp;
    }
    return _currentAuthMode;
  }

  Future<void> registration({
    required String username,
    required String password,
  }) async {
    //TODO registration request
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    //TODO login request
  }
}
