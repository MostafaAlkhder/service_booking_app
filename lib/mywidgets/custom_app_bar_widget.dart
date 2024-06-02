import 'package:flutter/material.dart';

AppBar customAppBarWidget({
  required String title,
  List<Widget>? actions,
  PreferredSizeWidget? bottom,
}) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    actions: actions,
    bottom: bottom,
  );
}
