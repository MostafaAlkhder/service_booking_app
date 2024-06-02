import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<BottomNavigationBarItem> items;
  BottomNavBarWidget(
      {required this.currentIndex, required this.onTap, required this.items});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: items,
      elevation: 20.0,
      type: BottomNavigationBarType.fixed,
    );
  }
}
