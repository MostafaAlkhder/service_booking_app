import 'package:flutter/material.dart';

Widget TextButtonWidget({
  required String text,
  required VoidCallback onPressed,
  Color textColor = Colors.blue,
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  Color backgroundColor = Colors.transparent,
  EdgeInsetsGeometry padding =
      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
}) {
  return TextButton(
    onPressed: onPressed,
    style: TextButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: backgroundColor,
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
        padding: padding),
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    ),
  );
}
