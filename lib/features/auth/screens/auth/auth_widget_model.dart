import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/strings/animations.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/start_animations.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_screen.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_model.dart';
import 'package:masmasgram_ui/features/common/domian/entity/models_settings.dart';
import 'package:masmasgram_ui/features/common/domian/providers/models_settings_provider.dart';
import 'package:masmasgram_ui/features/common/domian/repositories/models_settings.dart';
import 'package:masmasgram_ui/features/common/services/api_client.dart';
import 'package:masmasgram_ui/utils/number.dart';
import 'package:masmasgram_ui/utils/screen_sizes.dart';
import 'package:provider/provider.dart';

AuthWM createAuthWM(BuildContext context) => AuthWM(AuthModel(
      modelsSettingsRepository:
          ModelsSettingsRepository(context.read<ApiClient>()),
    ));

class AuthWM extends WidgetModel<AuthScreen, AuthModel>
    with TickerProviderWidgetModelMixin
    implements IAuthWM {
  late final AuthStartAnimations _startAnimations;
  late final AnimationController _passwordEyeLineController;
  late final Animation<double> _passwordEyeLineAnimation;
  late final StateNotifier<AuthMode> _authMode;
  late final StateNotifier<bool> _passwordIsEmpty;
  late final StateNotifier<bool> _showPassword;
  late final StateNotifier<ModelsSettings?> _modelsSettings;
  late final StateNotifier<bool> _canAuth;
  late final StateNotifier<bool> _usernameTooShort;
  late final StateNotifier<bool> _passwordTooShort;
  final TextEditingController _usernameFieldController =
      TextEditingController();
  final TextEditingController _passwordFieldController =
      TextEditingController();
  final TextEditingController _fullnameFieldController =
      TextEditingController();

  AuthWM(super.model);

  @override
  void initWidgetModel() {
    _authMode = StateNotifier<AuthMode>(initValue: model.currentAuthMode);
    _passwordIsEmpty = StateNotifier<bool>(initValue: true);
    _showPassword = StateNotifier<bool>(initValue: false);
    _modelsSettings = StateNotifier<ModelsSettings>();
    _canAuth = StateNotifier<bool>(initValue: false);
    _usernameTooShort = StateNotifier<bool>(initValue: true);
    _passwordTooShort = StateNotifier<bool>(initValue: true);
    _startAnimations = AuthStartAnimations(vsync: this);

    _passwordEyeLineController = AnimationController(
      vsync: this,
      duration: Animations.fastSpeed,
    );
    _passwordEyeLineAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _passwordEyeLineController,
      curve: Animations.curve,
    ));

    _usernameFieldController.addListener(() {
      _checkCanAuth();
    });
    _passwordFieldController.addListener(() {
      _checkCanAuth();
      if (_passwordFieldController.text.isNotEmpty && _passwordIsEmpty.value!) {
        _passwordIsEmpty.accept(false);
      }
      if (_passwordFieldController.text.isEmpty && !_passwordIsEmpty.value!) {
        _passwordIsEmpty.accept(true);
      }
    });
    _fullnameFieldController.addListener(() {
      _checkCanAuth();
    });

    _startAnimations.forward();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final modelsSettings = await model.initializeModelsSettings();
      _modelsSettings.accept(modelsSettings);
      context.read<ModelsSettingsProvider>().set(modelsSettings);
    });

    super.initWidgetModel();
  }

  @override
  void dispose() {
    _startAnimations.dispose();
    _passwordEyeLineController.dispose();
    super.dispose();
  }

  @override
  Size get screenSize => getScreenSize(context);

  @override
  BorderRadius get fieldsBorderRadius => BorderRadius.circular(7.5);

  @override
  double get fieldLabelPadding => 4.0;

  @override
  double get passwordEyeLineIndent => 2.0;

  @override
  TextStyle get authModeTitleStyle =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            color: secondaryColor,
          );

  @override
  TextStyle get fieldLabelStyle => Theme.of(context).textTheme.bodySmall!;

  @override
  TextStyle get changeAuthModeStyle => Theme.of(context).textTheme.bodySmall!;

  @override
  TextStyle get changeAuthModeButtonStyle =>
      changeAuthModeStyle.copyWith(color: secondaryColor);

  @override
  TextStyle get authButtonStyle =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.background,
          );

  @override
  Color get primaryColor => Theme.of(context).primaryColor;

  @override
  Color get secondaryColor => Theme.of(context).colorScheme.secondary;

  @override
  Color get dividerColor => Theme.of(context).dividerColor;

  @override
  Color get textColor => Theme.of(context).textTheme.titleLarge!.color!;

  @override
  TextEditingController get usernameFieldController => _usernameFieldController;

  @override
  TextEditingController get passwordFieldController => _passwordFieldController;

  @override
  TextEditingController get fullnameFieldController => _fullnameFieldController;

  @override
  AuthStartAnimations get startAnimations => _startAnimations;

  @override
  Animation<double> get passwordEyeLineAnimation => _passwordEyeLineAnimation;

  @override
  StateNotifier<AuthMode> get authMode => _authMode;

  @override
  StateNotifier<bool> get passwordIsEmpty => _passwordIsEmpty;

  @override
  StateNotifier<bool> get showPassword => _showPassword;

  @override
  StateNotifier<ModelsSettings?> get modelsSettings => _modelsSettings;

  @override
  StateNotifier<bool> get canAuth => _canAuth;

  @override
  StateNotifier<bool> get usernameTooShort => _usernameTooShort;

  @override
  StateNotifier<bool> get passwordTooShort => _passwordTooShort;

  void _checkCanAuth() {
    final username = _usernameFieldController.text;
    final password = _passwordFieldController.text;
    final fullname = _fullnameFieldController.text;
    bool canAuth = true;
    if (_modelsSettings.value != null) {
      //? Если получили настройки моделей, сверяем
      final usernameSettings = _modelsSettings.value!.username;
      final passwordSettings = _modelsSettings.value!.password;
      final fullnameSettings = _modelsSettings.value!.fullname;
      if (!username.length.isBetween(
        usernameSettings.minLen,
        usernameSettings.maxLen,
        include: true,
      )) {
        _usernameTooShort.accept(true);
        canAuth = false;
      } else {
        _usernameTooShort.accept(false);
      }
      if (!password.length.isBetween(
        passwordSettings.minLen,
        passwordSettings.maxLen,
        include: true,
      )) {
        _passwordTooShort.accept(true);
        canAuth = false;
      } else {
        _passwordTooShort.accept(false);
      }
      if (_authMode.value! == AuthMode.signUp &&
          fullname.length > fullnameSettings.maxLen) {
        canAuth = false;
      }
    } else {
      //? Если не получили, просто проверяем что юзернейм и пароль не путые
      if ([username, password].map((e) => e.isEmpty).contains(true)) {
        canAuth = false;
      }
    }
    _canAuth.accept(canAuth);
  }

  @override
  void tapOnPasswordEye() {
    if (_showPassword.value!) {
      _passwordEyeLineController.forward();
    } else {
      _passwordEyeLineController.animateBack(0.0);
    }
    _showPassword.accept(!_showPassword.value!);
  }

  @override
  void changeAuthMode() {
    _authMode.accept(_authMode.value!.opposite());
  }

  @override
  void tapOnAuthButton() {}
}

abstract class IAuthWM extends IWidgetModel {
  Size get screenSize;
  BorderRadius get fieldsBorderRadius;
  double get fieldLabelPadding;
  double get passwordEyeLineIndent;
  TextStyle get authModeTitleStyle;
  TextStyle get fieldLabelStyle;
  TextStyle get changeAuthModeStyle;
  TextStyle get changeAuthModeButtonStyle;
  TextStyle get authButtonStyle;
  Color get primaryColor;
  Color get secondaryColor;
  Color get dividerColor;
  Color get textColor;
  TextEditingController get usernameFieldController;
  TextEditingController get passwordFieldController;
  TextEditingController get fullnameFieldController;

  AuthStartAnimations get startAnimations;
  Animation<double> get passwordEyeLineAnimation;

  StateNotifier<AuthMode> get authMode;
  StateNotifier<bool> get passwordIsEmpty;
  StateNotifier<bool> get showPassword;
  StateNotifier<ModelsSettings?> get modelsSettings;
  StateNotifier<bool> get canAuth;
  StateNotifier<bool> get usernameTooShort;
  StateNotifier<bool> get passwordTooShort;

  void tapOnPasswordEye();
  void changeAuthMode();
  void tapOnAuthButton();
}
