import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/common/domian/entity/request_result/request_result.dart';
import 'package:masmasgram_ui/features/common/services/api_client.dart';
import 'package:masmasgram_ui/features/user/domian/entity/start_animations.dart';
import 'package:masmasgram_ui/features/user/domian/entity/user/user.dart';
import 'package:masmasgram_ui/features/user/domian/repositories/user_repository.dart';
import 'package:masmasgram_ui/features/user/screens/profile/profile_model.dart';
import 'package:masmasgram_ui/features/user/screens/profile/profile_view.dart';
import 'package:masmasgram_ui/utils/screen_sizes.dart';
import 'package:provider/provider.dart';

ProfileWM createProfileWM(BuildContext context) => ProfileWM(ProfileModel(
      userRepository: UserRepository(context.read<ApiClient>()),
    ));

class ProfileWM extends WidgetModel<ProfileView, ProfileModel>
    with TickerProviderWidgetModelMixin
    implements IProfileWM {
  late final ProfileStartAnimations _startAnimations;
  late final StateNotifier<bool> _isLoading;
  late final StateNotifier<User?> _userData;

  ProfileWM(super.model);

  @override
  void initWidgetModel() {
    _startAnimations = ProfileStartAnimations(vsync: this);
    _startAnimations.forward();

    _isLoading = StateNotifier(initValue: false);
    _userData = StateNotifier(initValue: model.user);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      update();
    });

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
  Color get primaryColor => Theme.of(context).primaryColor;

  @override
  Color get secondaryColor => Theme.of(context).colorScheme.secondary;

  @override
  Color get dividerColor => Theme.of(context).dividerColor;

  @override
  Color get textColor => Theme.of(context).textTheme.titleLarge!.color!;

  @override
  ProfileStartAnimations get startAnimations => _startAnimations;

  @override
  bool get isOurProfile => model.userId == null;

  @override
  StateNotifier<bool> get isLoading => _isLoading;

  @override
  StateNotifier<User?> get userData => _userData;

  @override
  Future<void> update() async {
    _isLoading.accept(true);
    final updateResult = await model.update();
    _isLoading.accept(false);
    if (updateResult is SuccessfullRequest<User>) {
      _userData.accept(updateResult.data);
    } else {
      //TODO show update error
    }
  }
}

abstract class IProfileWM extends IWidgetModel {
  Size get screenSize;
  Color get primaryColor;
  Color get secondaryColor;
  Color get dividerColor;
  Color get textColor;

  ProfileStartAnimations get startAnimations;

  bool get isOurProfile;
  StateNotifier<bool> get isLoading;
  StateNotifier<User?> get userData;

  Future<void> update();
}
