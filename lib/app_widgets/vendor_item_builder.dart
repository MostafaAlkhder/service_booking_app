import 'package:flutter/material.dart';
import 'package:service_booking_app/models/vendor.dart';
import 'package:service_booking_app/mywidgets/circle_image_widget.dart';

Widget VendorItemBuilderWidget(
    BuildContext context, VendorModel vendor, int index) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      circleImageWidget(assetPath: vendor.image, size: 100),
      SizedBox(height: 10), // Space between the image and text
      Text(vendor.name),
    ],
  );
}
