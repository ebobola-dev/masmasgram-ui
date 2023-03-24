import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasgram_ui/assets/strings/animations.dart';
import 'package:masmasgram_ui/assets/strings/image_paths.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText;
  final Widget? additionalSuffixWidget;
  final bool obscureText;
  const CustomTextField({
    super.key,
    this.controller,
    this.labelText,
    this.additionalSuffixWidget,
    this.obscureText = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _showErase = false;

  @override
  void initState() {
    if (widget.controller != null) {
      widget.controller!.addListener(() {
        if (widget.controller!.text.isNotEmpty && !_showErase) {
          setState(() {
            _showErase = true;
          });
        }
        if (widget.controller!.text.isEmpty && _showErase) {
          setState(() {
            _showErase = false;
          });
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      controller: widget.controller,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.additionalSuffixWidget != null)
              widget.additionalSuffixWidget!,
            AnimatedSize(
              duration: animationDuration,
              curve: animationCurve,
              child: SuffixIconButton(
                onTap: () => widget.controller?.clear(),
                show: _showErase,
                icon: SvgPicture.asset(
                  IconPaths.cross_circle,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).dividerColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
          ],
        ),
      ),
    );
  }
}

class SuffixIconButton extends StatelessWidget {
  final Widget icon;
  final bool show;
  final VoidCallback? onTap;
  const SuffixIconButton({
    super.key,
    this.onTap,
    this.show = true,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: animationDuration,
      curve: animationCurve,
      child: show
          ? GestureDetector(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 6.0,
                ),
                child: icon,
              ),
            )
          : SizedBox(),
    );
  }
}
