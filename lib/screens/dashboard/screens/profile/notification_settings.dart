import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';
import 'package:sqillup_student/screens/dashboard/notifications.dart';

import '../../../../styles/style.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({Key? key}) : super(key: key);

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sBgBlue,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        // ignore: prefer_const_constructors
        title: const Center(
          child: Text(
            "Notification Settings",
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
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: Notifications(
                          backTo: Dashboard(
                            selectedBottomTab: 1,
                          ),
                        ),
                        type: PageTransitionType.fade));
              },
              icon: Icon(Icons.notifications_rounded)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Admin Notification',
                      style: Styles.midHeadingBlueSml,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Push notification',
                        style: Styles.txtLargeMidDark,
                      ),
                      CupertinoSwitch(
                        value: isSwitched,
                        trackColor: Styles.sBgGray,
                        thumbColor: Colors.white,
                        activeColor: Styles.sBlue,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(height: 14),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email notification',
                        style: Styles.txtLargeMidDark,
                      ),
                      CupertinoSwitch(
                        value: isSwitched,
                        trackColor: Styles.sBgGray,
                        thumbColor: Colors.white,
                        activeColor: Styles.sBlue,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(height: 14),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Text notification',
                        style: Styles.txtLargeMidDark,
                      ),
                      CupertinoSwitch(
                        value: isSwitched,
                        trackColor: Styles.sBgGray,
                        thumbColor: Colors.white,
                        activeColor: Styles.sBlue,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 28,
              ),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: Row(
              //     children: [
              //       Text(
              //         'Payment notification',
              //         style: Styles.midHeadingBlueSml,
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 14),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.white,
              //   ),
              //   child: Column(children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(
              //           'Push notification',
              //           style: Styles.txtLargeMidDark,
              //         ),
              //         CupertinoSwitch(
              //           value: isSwitched,
              //           trackColor: Styles.sBgGray,
              //           thumbColor: Colors.white,
              //           activeColor: Styles.sBlue,
              //           onChanged: (value) {
              //             setState(() {
              //               isSwitched = value;
              //             });
              //           },
              //         ),
              //       ],
              //     ),
              //   ]),
              // ),
              // const SizedBox(height: 14),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.white,
              //   ),
              //   child: Column(children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(
              //           'Email notification',
              //           style: Styles.txtLargeMidDark,
              //         ),
              //         CupertinoSwitch(
              //           value: isSwitched,
              //           trackColor: Styles.sBgGray,
              //           thumbColor: Colors.white,
              //           activeColor: Styles.sBlue,
              //           onChanged: (value) {
              //             setState(() {
              //               isSwitched = value;
              //             });
              //           },
              //         ),
              //       ],
              //     ),
              //   ]),
              // ),
              // const SizedBox(height: 14),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.white,
              //   ),
              //   child: Column(children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(
              //           'Text notification',
              //           style: Styles.txtLargeMidDark,
              //         ),
              //         CupertinoSwitch(
              //           value: isSwitched,
              //           trackColor: Styles.sBgGray,
              //           thumbColor: Colors.white,
              //           activeColor: Styles.sBlue,
              //           onChanged: (value) {
              //             setState(() {
              //               isSwitched = value;
              //             });
              //           },
              //         ),
              //       ],
              //     ),
              //   ]),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
