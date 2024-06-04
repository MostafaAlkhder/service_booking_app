import 'package:flutter/material.dart';

class NavigationHelper {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<void> push(Widget page) async {
    navigatorKey.currentState
        ?.push(MaterialPageRoute(builder: (context) => page));
  }

  static void pop() {
    navigatorKey.currentState?.pop();
  }

  static Future<void> pushReplacement(Widget page) async {
    navigatorKey.currentState
        ?.pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  static Future<void> pushAndRemoveUntil(Widget page) async {
    navigatorKey.currentState?.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) =>
          false, // Adjust this condition to suit when to stop removing routes
    );
  }

  static Future<void> pushNamed(String routeName) async {
    navigatorKey.currentState?.pushNamed(routeName);
  }

  static Future<void> popUntil(String routeName) async {
    navigatorKey.currentState?.popUntil(ModalRoute.withName(routeName));
  }
}



// You Must Put This In MaterialApp : 
// navigatorKey: NavigationHelper.navigatorKey,
 