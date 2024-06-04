import 'package:flutter/material.dart';
import 'package:service_booking_app/common/widgets/mywidgets/app_bar_widget.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  // Example static list of notifications
  final List<Map<String, String>> notifications = [
    {
      "title": "Service Reminder",
      "body": "Don't forget your appointment tomorrow at 10:00 AM."
    },
    {
      "title": "New Service Available",
      "body": "Check out the new cleaning service now available in your area!"
    },
    {
      "title": "Promotion",
      "body":
          "Use the code WELCOME20 to get a 20% discount on your next booking."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Notifications'),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(notifications[index]["title"]!),
              subtitle: Text(notifications[index]["body"]!),
              trailing: Icon(Icons.more_vert),
              onTap: () {
                // Handle notification tap, potentially navigating to a different screen
              },
            ),
          );
        },
      ),
    );
  }
}
