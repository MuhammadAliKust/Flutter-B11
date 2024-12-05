import 'package:flutter/material.dart';
import 'package:flutter_b11/models/notification.dart';

class DynamicListViewDemo extends StatefulWidget {
  DynamicListViewDemo({super.key});

  @override
  State<DynamicListViewDemo> createState() => _DynamicListViewDemoState();
}

class _DynamicListViewDemoState extends State<DynamicListViewDemo> {
  List<NotificationModel> notificationList = [
    NotificationModel(
        title: 'First Notification',
        description: 'First Description',
        time: '12:40 AM'),
    NotificationModel(
        title: 'Second Notification',
        description: 'Second Description',
        time: '11:40 AM'),
    NotificationModel(
        title: 'Third Notification',
        description: 'Third Description',
        time: '10:40 AM'),
    NotificationModel(
        title: 'Fourth Notification',
        description: 'Fourth Description',
        time: '9:40 AM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic  List View"),
      ),
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Icon(Icons.notifications),
              title: Text(notificationList[i].title),
              subtitle: Text(notificationList[i].description),
              trailing: Text(notificationList[i].time),
            );
          }),
    );
  }
}
