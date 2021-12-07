import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  const CustomElevatedButton({
    required this.child,
    required this.color,
    required this.borderRadius,
    required this.onPressed,
    Key? key
  }) : super(key: key);
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color, // background
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(borderRadius)
            )
        ),
        // onPrimary: Colors.black, // foreground
      ),
    );
  }
}
