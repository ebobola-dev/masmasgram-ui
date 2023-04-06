import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/navigation/domian/entity/sub_pages.dart';
import 'package:masmasgram_ui/features/navigation/screens/navigation/navigation_widget_model.dart';

class MyNavigationBar extends StatelessWidget {
  final INavigationWM navigationWM;
  const MyNavigationBar({
    super.key,
    required this.navigationWM,
  });

  @override
  Widget build(BuildContext context) {
    return StateNotifierBuilder<SubPages>(
      listenableState: navigationWM.subPage,
      builder: (context, subPage) {
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_rounded),
              label: '',
            ),
          ],
          currentIndex: subPage!.index,
          selectedItemColor: Colors.amber[800],
          onTap: navigationWM.swipeTo,
        );
      },
    );
  }
}
