import 'package:elementary/elementary.dart';
import 'package:masmasgram_ui/features/common/domian/entity/request_result/request_result.dart';
import 'package:masmasgram_ui/features/user/domian/entity/user/user.dart';
import 'package:masmasgram_ui/features/user/domian/repositories/user_repository.dart';

//? If userId is null -> this is our profile
class ProfileModel extends ElementaryModel {
  final String? _userId;
  User? _user = null;

  final UserRepository _userRepository;

  ProfileModel({
    String? userId,
    required UserRepository userRepository,
  })  : _userId = userId,
        _userRepository = userRepository;

  String? get userId => _userId;
  User? get user => _user;

  Future<RequestResult> update() async {
    //TODO choice getUserData/getMyUserData
    final getMyUserDataResult = await _userRepository.getMyUserData();
    if (getMyUserDataResult is SuccessfullRequest<User>) {
      _user = getMyUserDataResult.data;
    }
    return getMyUserDataResult;
  }
}
