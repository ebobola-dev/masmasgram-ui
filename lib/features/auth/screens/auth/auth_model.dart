import 'dart:async';
import 'dart:developer';

import 'package:elementary/elementary.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/auth/domian/repositoties/auth_repository.dart';
import 'package:masmasgram_ui/features/common/domian/entity/api_error.dart';
import 'package:masmasgram_ui/features/common/domian/repositories/models_settings.dart';

class AuthModel extends ElementaryModel {
  final ModelsSettingsRepository _modelsSettingsRepo;
  final AuthRepository _authRepository;
  final StreamController<String> _errorStream = StreamController<String>();
  String? _token;
  AuthMode _currentAuthMode = AuthMode.signUp;

  AuthModel({
    required ModelsSettingsRepository modelsSettingsRepository,
    required AuthRepository authRepository,
  })  : _modelsSettingsRepo = modelsSettingsRepository,
        _authRepository = authRepository;

  String? get token => _token;
  AuthMode get currentAuthMode => _currentAuthMode;
  Stream<String> get errorStream => _errorStream.stream.asBroadcastStream();

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

  Future<void> registration({
    required String username,
    required String password,
    required String fullname,
  }) async {
    final registrationResult = await _authRepository.registration(
      username: username,
      password: password,
      fullname: fullname,
    );
    if (registrationResult is Map<String, dynamic>) {
      //* Registration success
    } else {
      //* Registration failed
      var errorMessage = 'Произошла ошибка при регистрации:';
      log('error runtimeType: ${registrationResult.runtimeType}');
      if (registrationResult is ApiMultipleError) {
        for (var error in registrationResult.errors) {
          errorMessage += '\n-$error';
        }
      } else if (registrationResult is ApiSingleError) {
        errorMessage += '\n-${registrationResult.error}';
      } else if (registrationResult is ApiUnexpectedError) {
        errorMessage += '\n-${registrationResult.message}';
      } else if (registrationResult is ApiNoAnswerError) {
        errorMessage += '\n-${registrationResult.message}';
      } else {
        errorMessage += '\n-Хто я?';
      }
      _errorStream.add(errorMessage);
    }
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    //TODO login request
  }
}
