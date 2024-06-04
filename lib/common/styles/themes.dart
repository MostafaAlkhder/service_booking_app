import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:service_booking_app/common/styles/colors.dart';

class Themes {
  static ThemeData mainTheme = ThemeData(
    fontFamily: 'Jannah',
    primarySwatch: defultColor,
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: defultColor),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: defultColor,
            statusBarIconBrightness: Brightness.dark),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: defultColor,
        elevation: 20.0),
    iconTheme: IconThemeData(color: Colors.black, size: 20),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
    ),
  );
  // static ThemeData darkTheme = ThemeData(
  //     fontFamily: 'Jannah',
  //     primarySwatch: defultColor,
  //     floatingActionButtonTheme:
  //         FloatingActionButtonThemeData(backgroundColor: Colors.deepOrange),
  //     scaffoldBackgroundColor: HexColor('333739'),
  //     appBarTheme: AppBarTheme(
  //         titleSpacing: 20.0,
  //         backgroundColor: HexColor('333739'),
  //         elevation: 0.0,
  //         systemOverlayStyle: SystemUiOverlayStyle(
  //             statusBarColor: HexColor('333739'),
  //             statusBarIconBrightness: Brightness.light),
  //         titleTextStyle: TextStyle(
  //             color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
  //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //         type: BottomNavigationBarType.fixed,
  //         selectedItemColor: defultColor,
  //         elevation: 20.0,
  //         backgroundColor: HexColor('333739'),
  //         unselectedItemColor: Colors.grey),
  //     iconTheme: IconThemeData(color: Colors.white, size: 20),
  //     textTheme: TextTheme(
  //         bodyText1: TextStyle(
  //             fontSize: 18.0,
  //             fontWeight: FontWeight.w600,
  //             color: Colors.white)));
}
