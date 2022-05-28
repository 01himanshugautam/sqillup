// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/screens/dashboard/screens/profile_dashboard.dart';
import 'package:sqillup_student/widgets/dashboard/chart.dart';
import 'package:sqillup_student/widgets/dashboard/recently_upload_video.dart';
import 'package:sqillup_student/widgets/dashboard/score.dart';

import '../../../styles/style.dart';
import 'package:avatar_view/avatar_view.dart';

import '../../../widgets/sized_boxes.dart';
import '../dashboard.dart';
import '../notifications.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sBgBlue,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Styles.sBlue,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileDashboard()),
            );
          },
          icon: const Icon(
            Icons.dehaze_rounded,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: Notifications(
                              backTo: Dashboard(
                                selectedBottomTab: 0,
                              ),
                            ),
                            type: PageTransitionType.fade));
                  },
                  icon: const Icon(Icons.notifications_rounded)))
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
              color: Styles.sBlue,
            ),
            child: Column(children: [
              Center(
                child: AvatarView(
                  // borderWidth: 1,
                  radius: 50,
                  borderColor: Colors.white,
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Styles.sBgGray.withOpacity(0.7),
                  imagePath: 'assets/images/profile.png',
                  placeHolder: const CircularProgressIndicator(
                    strokeWidth: 10,
                    color: Styles.sBlue,
                  ),
                  errorWidget: Container(
                    child: const Icon(
                      Icons.error,
                      size: 50,
                    ),
                  ),
                ),
              ),
              const SizedBoxH10(),
              const Text(
                'Karina Michael',
                style: Styles.TxtWhite,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Senior High School',
                    style: Styles.darkCardTextThin,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '12th Grade',
                    style: Styles.darkCardTextThin,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ]),
          ),
          const SizedBoxH20(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  // for (var i = 0; i < 5; i++)
                  Column(children: [
                    Container(
                      // width: 450.0,
                      height: 140.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: const [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 30.0),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Notices Comes Here',
                                    style: Styles.noticeTitle,
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Notices Comes Here',
                                    style: Styles.noticeSubTitle,
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBoxH20(),
                    const LearningActiveChart(),
                    const SizedBoxH20(),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Score",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins.semibold',
                              color: Styles.BotsheetTxtColor)),
                    ),
                    const SizedBoxH10(),
                    const DashboardScore(),
                    const SizedBoxH20(),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Recently uploaded video",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins.semibold',
                            color: Styles.BotsheetTxtColor,
                          )),
                    ),
                    const SizedBoxH10(),
                    const DashboardResentVid(),
                  ]),
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
