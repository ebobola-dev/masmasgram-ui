import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  factory User({
    required final String id,
    required final String username,
    final String? fullname,
    required final bool isOnline,
    required final int postCount,
    required final int followersCount,
    required final int followsCount,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
