import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/user/screens/profile/profile_widget_model.dart';

class UserHeader extends StatelessWidget {
  final IProfileWM profileWM;
  const UserHeader({
    super.key,
    required this.profileWM,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (profileWM.isOurProfile)
          IconButton(
            onPressed: () => log('tap'),
            icon: Icon(
              Icons.arrow_back,
              color: profileWM.textColor,
            ),
          ),
      ],
    );
  }
}
