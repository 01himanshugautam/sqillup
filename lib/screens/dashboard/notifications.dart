import 'package:flutter/material.dart';

import '../../styles/style.dart';
import '../../widgets/notification_card.dart';
import '../../widgets/rounded_icon_button.dart';

class Notifications extends StatefulWidget {
  Widget backTo;
  Notifications({Key? key, required this.backTo}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List notis = [
    {
      "icon": const Icon(
        Icons.update,
        color: Styles.sBlue,
        size: 28,
      ),
      "title": "New update version 2.0",
      "time": "2 min ago",
      "status": false
    },
    {
      "icon": const Icon(
        Icons.check_circle_outline,
        color: Styles.sBlue,
        size: 28,
      ),
      "title": "Buy \$20 credit sucess",
      "time": "2 min ago",
      "status": false
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          // ignore: prefer_const_constructors
          title: const Center(
            child: Text(
              "Notifications",
              style: TextStyle(
                  fontSize: 18,
                  color: Styles.sTextDarkBlue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          elevation: 0.0,
          backgroundColor: Styles.sBgBlue,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.all(15.0),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            for (var noti in notis) NotificationCard(notification: noti)
          ]),
        ));
  }
}
