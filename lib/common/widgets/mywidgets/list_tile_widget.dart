import 'package:flutter/material.dart';

Widget ListTileWidget({
  required String title,
  Widget? subtitle,
  IconData icon = Icons.info,
  Color iconColor = Colors.blue,
  VoidCallback? onTap,
  Widget? trailing,
}) {
  return ListTile(
    leading: Icon(icon, color: iconColor),
    title: Text(title),
    subtitle: subtitle != null ? subtitle : null,
    onTap: onTap,
    trailing: trailing,
    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  );
}
