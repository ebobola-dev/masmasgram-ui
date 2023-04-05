import 'dart:async';
import 'dart:developer';

import 'package:elementary/elementary.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/auth/domian/repositoties/auth_repository.dart';
import 'package:masmasgram_ui/features/common/domian/entity/login_request/login_request_result.dart';
import 'package:masmasgram_ui/features/common/domian/entity/registation_request/registation_request_result.dart';
import 'package:masmasgram_ui/features/common/domian/repositories/models_settings.dart';
import 'package:masmasgram_ui/features/common/domian/repositories/secure_storage.dart';

class AuthModel extends ElementaryModel {
  final ModelsSettingsRepository _modelsSettingsRepo;
  final AuthRepository _authRepository;
  final SecureStorageRepository _secureStorageRepository;
  String? _token;
  AuthMode _currentAuthMode = AuthMode.signUp;

  AuthModel({
    required ModelsSettingsRepository modelsSettingsRepository,
    required AuthRepository authRepository,
    required SecureStorageRepository secureStorageRepository,
  })  : _modelsSettingsRepo = modelsSettingsRepository,
        _authRepository = authRepository,
        _secureStorageRepository = secureStorageRepository;

  AuthMode get currentAuthMode => _currentAuthMode;

  Future<dynamic> initializeModelsSettings() async {
    final modelsSettings = await _modelsSettingsRepo.get();
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

  Future<RegistrationRequestResult> registration({
    required String username,
    required String password,
    required String fullname,
  }) async {
    return await _authRepository.registration(
      username: username,
      password: password,
      fullname: fullname,
    );
  }

  Future<LoginRequestResult> login({
    required String username,
    required String password,
  }) async {
    final loginResult = await _authRepository.login(
      username: username,
      password: password,
    );
    if (loginResult is SuccessfullyLoggedIn) {
      log(
        'Successfully logged in, token -> ${loginResult.token}',
        name: 'AuthModel | login',
      );
      _secureStorageRepository.writeToken(loginResult.token);
    }
    return loginResult;
  }
}
