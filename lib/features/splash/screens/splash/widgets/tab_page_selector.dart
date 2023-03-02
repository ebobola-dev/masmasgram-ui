import 'package:flutter/material.dart';

class SplashTabPageSelector extends StatelessWidget {
  const SplashTabPageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        TabItem(selected: true),
        SizedBox(width: 8),
        TabItem(selected: false),
        SizedBox(width: 8),
        TabItem(selected: false),
      ],
    );
  }
}

class TabItem extends StatelessWidget {
  final bool selected;
  const TabItem({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.titleLarge!.color!;
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: selected ? textColor : null,
        shape: BoxShape.circle,
        border: Border.all(
          color: textColor,
        ),
      ),
    );
  }
}
