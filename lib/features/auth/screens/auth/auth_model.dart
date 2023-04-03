import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/auth/domian/repositoties/auth_repository.dart';
import 'package:masmasgram_ui/features/common/domian/entity/registation_request/registation_request_result.dart';
import 'package:masmasgram_ui/features/common/domian/repositories/models_settings.dart';

class AuthModel extends ElementaryModel {
  final ModelsSettingsRepository _modelsSettingsRepo;
  final AuthRepository _authRepository;
  // final StreamController<String> _errorStream = StreamController<String>();
  // final StreamController<String> _successStream = StreamController<String>();
  String? _token;
  AuthMode _currentAuthMode = AuthMode.signUp;

  AuthModel({
    required ModelsSettingsRepository modelsSettingsRepository,
    required AuthRepository authRepository,
  })  : _modelsSettingsRepo = modelsSettingsRepository,
        _authRepository = authRepository;

  String? get token => _token;
  AuthMode get currentAuthMode => _currentAuthMode;
  // Stream<String> get errorStream => _errorStream.stream.asBroadcastStream();
  // Stream<String> get successStream => _successStream.stream.asBroadcastStream();

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
    // if (registrationResult is SuccessfullyRegistered) {
    //   //* Registration success
    // } else if (registrationResult is RegistrationFailed) {
    //   //* Registration failed
    //   final euErrors = registrationResult.error.euErrors;
    //   var errorMessage = '';
    //   for (var item in euErrors.asMap().entries) {
    //     errorMessage += '${item.value}';
    //     if (item.key != euErrors.length - 1) {
    //       errorMessage += '\n';
    //     }
    //   }
    //   _errorStream.add(errorMessage);
    // }
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    //TODO login request
  }
}
