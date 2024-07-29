import 'package:flutter/material.dart';
import 'package:firstapp/pages/splash/pages/notification_page.dart';

class NotificationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.notifications),
      title: Text('Notifications'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationPage()),
        );
      },
    );
  }
}