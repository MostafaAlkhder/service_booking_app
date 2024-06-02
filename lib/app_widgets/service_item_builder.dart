import 'package:flutter/material.dart';
import 'package:service_booking_app/models/services.dart';
import 'package:service_booking_app/mywidgets/circle_image_widget.dart';

Widget serviceItemBuilderWidget(
    BuildContext context, ServiceModel service, int index) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      circleImageWidget(assetPath: service.image, size: 100),
      SizedBox(height: 10), // Space between the image and text
      Text(service.name),
    ],
  );
}
