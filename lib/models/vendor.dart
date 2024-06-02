import 'package:service_booking_app/models/review.dart';
import 'package:service_booking_app/models/services.dart';

class VendorModel {
  final int id;
  final String name;
  final String category;
  final String image;
  final String description;
  final List<ServiceModel> services;
  final List<String> photos;
  final List<ReviewModel> reviews;
  final Map<String, dynamic> availabilitySlots;

  VendorModel({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.description,
    required this.services,
    required this.photos,
    required this.reviews,
    required this.availabilitySlots,
  });

  factory VendorModel.fromJson(Map<String, dynamic> json) {
    return VendorModel(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      image: json['image'],
      description: json['description'],
      services: (json['services'] as List)
          .map((serviceJson) => ServiceModel.fromJson(serviceJson))
          .toList(),
      photos: List<String>.from(json['photos']),
      reviews: (json['reviews'] as List)
          .map((reviewJson) => ReviewModel.fromJson(reviewJson))
          .toList(),
      availabilitySlots: json['availabilitySlots'],
    );
  }
}
