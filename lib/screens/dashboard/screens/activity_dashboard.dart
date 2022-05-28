import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/globe_functions/globe_functions.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';
import 'package:sqillup_student/screens/dashboard/screens/activity/questions.dart';

import '../../../styles/style.dart';
import '../../../widgets/assignment_card.dart';
import '../../../widgets/select_student.dart';
import '../../../widgets/student_activity_tabs.dart';
import 'package:sqillup_student/screens/dashboard/notifications.dart';

class ActivityDashboard extends StatefulWidget {
  const ActivityDashboard({Key? key}) : super(key: key);

  @override
  State<ActivityDashboard> createState() => _ActivityDashboardState();
}

class _ActivityDashboardState extends State<ActivityDashboard> {
  var selectedExamBoard;
  List subjects = [
    'assets/subjects/sub1.png',
    'assets/subjects/sub2.png',
    'assets/subjects/sub3.png',
    'assets/subjects/sub4.png'
  ];

  var selectedSubject = 'assets/subjects/sub1.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        foregroundColor: Styles.sTextDarkBlue,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Activity',
          style: Styles.subHeadingSemiBold,
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
                                selectedBottomTab: 1,
                              ),
                            ),
                            type: PageTransitionType.fade));
                  },
                  icon: const Icon(Icons.notifications_rounded)))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SelectStudent(),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var sub in subjects)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSubject = sub;
                            });
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border: selectedSubject == sub
                                    ? Border.all(color: Styles.sBlue, width: 2)
                                    : Border.all(color: Colors.white, width: 2),
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF707070)
                                        .withOpacity(.15),
                                    offset: const Offset(0.0, 6.0),
                                    blurRadius: 12.0,
                                  )
                                ]),
                            child: Image.asset(
                              sub,
                              width: 20,
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const StudentActivityTabs(),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: deviceHeight(context) - 380,
                  child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20),
                      children: [
                        for (var t = 0; t < 6; t++)
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: const Questions(),
                                        type: PageTransitionType.fade));
                              },
                              child:  AssignmentCard())
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
