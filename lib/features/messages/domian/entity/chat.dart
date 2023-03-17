import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:masmasgram_ui/features/messages/domian/entity/message.dart';
import 'package:masmasgram_ui/features/user/domian/entity/user.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  const Chat._();

  factory Chat({
    required final String id,
    required final int messagesCount,
    required final List<User> users,
    required final Message? lastMessage,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
