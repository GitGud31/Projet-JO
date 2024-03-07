import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/conts/styles.dart';

class ActionButton extends ConsumerStatefulWidget {
  const ActionButton({
    super.key,
    required this.onTap,
    required this.textColor,
    required this.bgColor,
    required this.text,
  });

  final void Function() onTap;
  final Color bgColor;
  final Color textColor;
  final String text;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ActionButtonState();
}

class _ActionButtonState extends ConsumerState<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.bgColor,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: widget.onTap,
      child: Text(
        widget.text,
        style: buttonTextStyle.copyWith(color: widget.textColor),
      ),
    );
  }
}
