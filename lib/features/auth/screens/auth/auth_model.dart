import 'package:elementary/elementary.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';

class AuthModel extends ElementaryModel {
  String? _token;
  AuthMode _currentAuthMode = AuthMode.signUp;

  String? get token => _token;
  AuthMode get currentAuthMode => _currentAuthMode;

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
