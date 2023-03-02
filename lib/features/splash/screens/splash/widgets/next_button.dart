import 'dart:developer' show log;

import 'package:flutter/material.dart';
import 'dart:math' show pi;

import 'package:masmasgram_ui/assets/strings/next_button.dart';

class SplashNextButton extends StatelessWidget {
  final double size;
  const SplashNextButton({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.titleLarge!.color!;
    return Transform.rotate(
      angle: pi / 4,
      child: Wrapper(
        size: size,
        decoration: BoxDecoration(
          border: Border.all(
            color: textColor,
          ),
          borderRadius: BorderRadius.circular(NextButtonSizes.bigWrapperRadius),
        ),
        child: Material(
          color: textColor,
          borderRadius:
              BorderRadius.circular(NextButtonSizes.smallWrapperRadius),
          child: InkWell(
            onTap: () {
              log('tap on next');
            },
            splashColor: Theme.of(context).colorScheme.primary,
            borderRadius:
                BorderRadius.circular(NextButtonSizes.smallWrapperRadius),
            child: Wrapper(
              size: size - 14.0,
              alignment: const Alignment(-0.15, -0.05),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(NextButtonSizes.smallWrapperRadius),
              ),
              child: Transform.rotate(
                angle: -pi / 4,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Next',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(width: 15),
                    Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  final double size;
  final Alignment alignment;
  final BoxDecoration decoration;
  final Widget child;
  const Wrapper({
    super.key,
    required this.size,
    this.alignment = Alignment.center,
    required this.decoration,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: alignment,
      decoration: decoration,
      child: child,
    );
  }
}
