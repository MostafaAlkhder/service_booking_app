import 'package:service_booking_app/models/category.dart';
import 'package:service_booking_app/models/services.dart';
import 'package:service_booking_app/models/vendor.dart';

abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppChangeBottomNavBarState extends AppStates {}

class AppInitial extends AppStates {}

class AppLoading extends AppStates {}

class AppLoaded extends AppStates {
  final List<CategoryModel> categories;
  final List<ServiceModel> services;
  final List<VendorModel> vendors;

  AppLoaded(this.categories, this.services, this.vendors);
}

class AppError extends AppStates {
  final String message;

  AppError(this.message);
}
