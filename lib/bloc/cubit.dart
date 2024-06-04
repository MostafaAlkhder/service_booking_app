import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_booking_app/bloc/states.dart';
import 'package:service_booking_app/gen/assets.gen.dart';
import 'package:service_booking_app/models/category.dart';
import 'package:service_booking_app/models/services.dart';
import 'package:service_booking_app/models/vendor.dart';
import 'package:service_booking_app/screens/my_profile_screen.dart';
import 'package:service_booking_app/screens/notifications_screen.dart';
import 'package:service_booking_app/screens/home_screen.dart';
import 'package:service_booking_app/screens/myBookings_screen.dart';
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
  List<String?> servicesFiltersList = [
    "All",
    "catigory",
    "price range",
    "sorted by price",
  ];
  String? serviceFilterSelectedValue = "All";
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
  List<ServiceModel> filteredServices = [];
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

  void changeServiceFilterSelectedValue(String? value) {
    serviceFilterSelectedValue = value;
    if (value == servicesFiltersList[0])
      filteredServices = this.services;
    else if (value == servicesFiltersList[1])
      filteredServices = this.getServicesByCategory(1);
    if (value == servicesFiltersList[2])
      filteredServices = this.getServicesByPriceRange(100, 1000);
    if (value == servicesFiltersList[3])
      filteredServices = this.getSortedServicesByPrice();
    emit(AppChangeServicesFilterSelectedValue());
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
      filteredServices = this.services;

      this.isLoading = false;
      emit(AppLoaded(categories, services, vendors));
    } catch (error) {
      this.isLoading = false;
      emit(AppError('Failed to fetch data'));
    }
  }

  List<ServiceModel> getServicesByCategory(int categoryId) {
    return services
        .where((service) => service.categoryId == categoryId)
        .toList();
  }

  List<ServiceModel> getServicesByPriceRange(double minPrice, double maxPrice) {
    return services
        .where(
            (service) => service.price >= minPrice && service.price <= maxPrice)
        .toList();
  }

  List<ServiceModel> getSortedServicesByPrice() {
    List<ServiceModel> sortedServices = List<ServiceModel>.from(services);

    sortedServices.sort((a, b) => a.price.compareTo(b.price));

    return sortedServices;
  }
}
