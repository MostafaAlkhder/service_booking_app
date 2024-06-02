import 'package:flutter/material.dart';

Widget horizontalListViewSeparatedWidget<T>({
  required List<T> items,
  required Widget Function(BuildContext, T, int) itemBuilder,
  double separatorWidth = 10.0,
  double height = 100.0,
  ScrollPhysics physics = const BouncingScrollPhysics(),
}) {
  return Container(
    height: height,
    child: ListView.separated(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) =>
          itemBuilder(context, items[index], index),
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(width: separatorWidth),
    ),
  );
}
