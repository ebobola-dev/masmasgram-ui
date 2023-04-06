import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:masmasgram_ui/features/user/domian/entity/user/user.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const Message._();

  factory Message({
    required final String id,
    required final String chatId,
    required final DateTime date,
    required final User fromUser,
    required final String text,
    required final bool viewed,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
