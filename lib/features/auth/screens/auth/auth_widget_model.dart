import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/auth_mode.dart';
import 'package:masmasgram_ui/features/auth/domian/entity/start_animations.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_screen.dart';
import 'package:masmasgram_ui/features/auth/screens/auth/auth_model.dart';
import 'package:masmasgram_ui/utils/screen_sizes.dart';

AuthWM createAuthWM(BuildContext context) => AuthWM(AuthModel());

class AuthWM extends WidgetModel<AuthScreen, AuthModel>
    with TickerProviderWidgetModelMixin
    implements IAuthWM {
  late final AuthStartAnimations _startAnimations;
  late final StateNotifier<AuthMode> _authMode;
  late final StateNotifier<bool> _passwordIsEmpty;
  late final StateNotifier<bool> _showPassword;
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
    _startAnimations = AuthStartAnimations(vsync: this);

    _passwordFieldController.addListener(() {
      if (_passwordFieldController.text.isNotEmpty && _passwordIsEmpty.value!) {
        _passwordIsEmpty.accept(false);
      }
      if (_passwordFieldController.text.isEmpty && !_passwordIsEmpty.value!) {
        _passwordIsEmpty.accept(true);
      }
    });

    _startAnimations.forward();
    super.initWidgetModel();
  }

  @override
  void dispose() {
    _startAnimations.dispose();
    super.dispose();
  }

  @override
  Size get screenSize => getScreenSize(context);

  @override
  BorderRadius get fieldsBorderRadius => BorderRadius.circular(7.5);

  @override
  double get fieldLabelPadding => 4.0;

  @override
  TextStyle get authModeStyle =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            color: secondaryColor,
          );

  @override
  TextStyle get fieldLabelStyle => Theme.of(context).textTheme.bodySmall!;

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
  StateNotifier<AuthMode> get authMode => _authMode;

  @override
  StateNotifier<bool> get passwordIsEmpty => _passwordIsEmpty;

  @override
  StateNotifier<bool> get showPassword => _showPassword;

  @override
  void tapOnPasswordEye() {
    _showPassword.accept(!_showPassword.value!);
  }

  @override
  void tapOnNext() {}
}

abstract class IAuthWM extends IWidgetModel {
  Size get screenSize;
  BorderRadius get fieldsBorderRadius;
  double get fieldLabelPadding;
  TextStyle get authModeStyle;
  TextStyle get fieldLabelStyle;
  Color get primaryColor;
  Color get secondaryColor;
  Color get dividerColor;
  Color get textColor;
  TextEditingController get usernameFieldController;
  TextEditingController get passwordFieldController;
  TextEditingController get fullnameFieldController;

  AuthStartAnimations get startAnimations;

  StateNotifier<AuthMode> get authMode;
  StateNotifier<bool> get passwordIsEmpty;
  StateNotifier<bool> get showPassword;

  void tapOnNext();
  void tapOnPasswordEye();
}
