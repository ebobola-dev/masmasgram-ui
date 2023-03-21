import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:masmasgram_ui/features/user/domian/entity/user.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const Post._();

  factory Post({
    required final String id,
    required final User fromUser,
    required final DateTime date,
    final String? description,
    required final int likesCount,
    required final int commentsCount,
    required final int favoritesCount,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
