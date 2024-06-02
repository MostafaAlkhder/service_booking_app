import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_booking_app/bloc/states.dart';
import 'package:service_booking_app/gen/assets.gen.dart';
import 'package:service_booking_app/models/category.dart';
import 'package:service_booking_app/models/services.dart';
import 'package:service_booking_app/models/vendor.dart';
import 'package:service_booking_app/screens/MyProfileScreen.dart';
import 'package:service_booking_app/screens/NotificationsScreen.dart';
import 'package:service_booking_app/screens/homeScreen.dart';
import 'package:service_booking_app/screens/myBookingsScreen.dart';
import 'package:flutter/services.dart' show rootBundle;

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  List<String> carouselSliderImageList = [
    Assets.images.carouselSlider.carouselSlider1.path,
    Assets.images.carouselSlider.carouselSlider2.path,
    Assets.images.carouselSlider.carouselSlider3.path,
    Assets.images.carouselSlider.carouselSlider4.path,
    Assets.images.carouselSlider.carouselSlider5.path,
    Assets.images.carouselSlider.carouselSlider1.path
  ];
  List<BottomNavigationBarItem> bottomNavBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(Icons.notifications), label: 'Notifications'),
    BottomNavigationBarItem(icon: Icon(Icons.book), label: 'My Bookings'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My Profile'),
  ];
  int currentIndex = 0;
  bool isLoading = true;
  List<CategoryModel> categories = [];
  List<ServiceModel> services = [];
  List<VendorModel> vendors = [];
  List<Widget> screens = [
    HomeScreen(),
    NotificationsScreen(),
    MyBookingsScreen(),
    MyProfileScreen(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  void loadData() async {
    try {
      emit(AppLoading());
      await Future.delayed(Duration(seconds: 3)); // simulate a network call
      final String response =
          await rootBundle.loadString('assets/data/data.json');
      final jsonData = json.decode(response);
      this.categories = List<CategoryModel>.from(
          jsonData['categories'].map((x) => CategoryModel.fromJson(x)));
      this.services = List<ServiceModel>.from(
          jsonData['services'].map((x) => ServiceModel.fromJson(x)));
      this.vendors = List<VendorModel>.from(
          jsonData['vendors'].map((x) => VendorModel.fromJson(x)));
      this.isLoading = false;
      emit(AppLoaded(categories, services, vendors));
    } catch (error) {
      this.isLoading = false;
      emit(AppError('Failed to fetch data'));
    }
  }
}
