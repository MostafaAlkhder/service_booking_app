import 'package:flutter/material.dart';

Widget ListViewSeparatedWidget<T>({
  required List<T> items,
  required Widget Function(BuildContext, T) itemBuilder,
  Widget separatorBuilder = const Divider(color: Colors.grey),
  EdgeInsets padding = const EdgeInsets.all(0),
  ScrollPhysics physics = const BouncingScrollPhysics(),
  bool shrinkWrap = false,
  void Function(T)? onTap,
}) {
  return ListView.separated(
    padding: padding,
    physics: physics,
    shrinkWrap: shrinkWrap,
    itemCount: items.length,
    itemBuilder: (BuildContext context, int index) {
      return InkWell(
        onTap: onTap != null ? () => onTap(items[index]) : null,
        child: itemBuilder(context, items[index]),
      );
    },
    separatorBuilder: (BuildContext context, int index) => separatorBuilder,
  );
}
