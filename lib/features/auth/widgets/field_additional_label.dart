import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

class FieldAdditionalLabel extends StatelessWidget {
  final ListenableState<bool>? listenableState;
  final TextStyle textStyle;
  final int minLen;
  final int maxLen;
  const FieldAdditionalLabel({
    super.key,
    this.listenableState,
    required this.textStyle,
    required this.minLen,
    required this.maxLen,
  });

  @override
  Widget build(BuildContext context) {
    if (listenableState != null) {
      return StateNotifierBuilder<bool>(
        listenableState: listenableState!,
        builder: (context, usernameTooShort) {
          return RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '* (',
                  style: textStyle,
                ),
                TextSpan(
                  text: 'min. $minLen',
                  style: usernameTooShort!
                      ? textStyle.copyWith(color: Colors.red)
                      : textStyle,
                ),
                TextSpan(
                  text: ', max. $maxLen of characters)',
                  style: textStyle,
                ),
              ],
            ),
          );
        },
      );
    } else {
      return Text(
        '* (min. $minLen, max. $maxLen of characters)',
        style: textStyle,
      );
    }
  }
}
