import 'package:flutter/material.dart';

Widget circleImageWidget({
  required String assetPath,
  double size = 50.0,
  Color borderColor = Colors.white,
  double borderWidth = 2.0,
}) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: borderColor,
        width: borderWidth,
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(assetPath),
      ),
    ),
  );
}
