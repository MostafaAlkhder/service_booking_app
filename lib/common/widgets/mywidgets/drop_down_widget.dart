import 'package:flutter/material.dart';

Widget DropdownWidget<T>({
  T? currentValue,
  required List<T> items,
  required String Function(T) displayItem,
  required void Function(T?) onSelected,
  String hint = 'Choose one',
  Color? underlineColor,
}) {
  return DropdownButton<T>(
    value: currentValue,
    hint: Text(hint),
    items: items.map((item) {
      return DropdownMenuItem<T>(
        value: item,
        child: Text(displayItem(item)),
      );
    }).toList(),
    onChanged: onSelected,
    isExpanded: true,
    underline: Container(
      height: 1,
      color: underlineColor ?? Colors.blue,
    ),
  );
}
