import 'package:flutter/material.dart';

Widget loadingSpinnerWidget({Color color = Colors.blue}) {
  return Center(
    child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(color)),
  );
}
