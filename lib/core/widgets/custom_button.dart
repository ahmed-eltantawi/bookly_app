import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.textWidget,
    required this.onTap,
    this.inLeft = false,
  });
  final Color color;
  final Text textWidget;
  final VoidCallback onTap;
  final bool inLeft;
  final double borderRadius = 16;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: inLeft
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(borderRadius),
                  topLeft: Radius.circular(borderRadius),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius),
                ),
          color: color,
        ),
        child: Center(child: textWidget),
      ),
    );
  }
}
