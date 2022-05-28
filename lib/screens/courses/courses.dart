// ignore_for_file: avoid_unnecessary_containers, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/http_services/chapter/chapter_apis.dart';
import 'package:sqillup_student/widgets/course/card.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

import '../../styles/style.dart';
import '../dashboard/dashboard.dart';
import '../dashboard/notifications.dart';
import '../dashboard/screens/profile_dashboard.dart';

class Courses extends StatefulWidget {
  Courses({
    Key? key,
  }) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  ChapterServices chapterServices = ChapterServices();
  var data;
  var selectedExamBoard;
  List subjects = [
    'assets/subjects/sub1.png',
    'assets/subjects/sub2.png',
    'assets/subjects/sub3.png',
    'assets/subjects/sub4.png'
  ];

  var selectedSubject = 'assets/subjects/sub1.png';
  @override
  void initState() {
    super.initState();
    viewAllLesson();
  }

  viewAllLesson() async {
    data = await chapterServices.viewAllLesson();
    setState(() {
      data = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sBgBlue,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileDashboard()),
            );
          },
          icon: const Icon(
            Icons.dehaze_rounded,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Courses',
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
                  icon: const Icon(
                    Icons.notifications_rounded,
                    color: Colors.black,
                  )))
        ],
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        // leading: RoundedIconButton(
        //   padding: 7,
        //     icon: Icons.arrow_back_ios, navigateTo: PlanPackages())
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    cursorColor: const Color(0xFF000000),
                    // controller: _searchController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Styles.sBlue,
                        ),
                        hintText: "Search Courses",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.2)),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBoxH10(),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Container(
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
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF707070)
                                        .withOpacity(.15),
                                    offset: const Offset(0.0, 6.0),
                                    blurRadius: 12.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Image.asset(
                                sub,
                                width: 20,
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                const SizedBoxH10(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                 child: CourseCard(data: data),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
