import 'package:flutter/material.dart';

Widget customElevatedButtonWidget({
  required String label,
  required VoidCallback onPressed,
  Color backgroundColor = Colors.blue,
  Color textColor = Colors.white,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      foregroundColor: textColor,
      backgroundColor: backgroundColor, // Text color
    ),
    child: Text(label),
  );
}
