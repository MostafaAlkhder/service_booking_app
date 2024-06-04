import 'package:flutter/material.dart';

Widget VendorItemBuilderWidget({
  required String name,
  required String imagePath,
  required String category,
  required int rating,
  required VoidCallback onTap,
}) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.all(5.0),
    color: Colors.white,
    child: Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(8.0), // Ensure padding is consistent
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              Container(
                height: 35,
                color: Colors.black38,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(category,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      Spacer(),
                      VerticalDivider(
                        width:
                            20, // The width of the divider + space on both sides
                        thickness: 2, // The thickness of the line
                        color: Colors.white, // Color of the divider
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Text(rating.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
