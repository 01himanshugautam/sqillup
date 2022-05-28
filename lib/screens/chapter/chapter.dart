// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/globe_functions/globe_functions.dart';
import 'package:sqillup_student/http_services/chapter/chapter_apis.dart';
import 'package:sqillup_student/screens/chapter/all_lesson.dart';
import 'package:sqillup_student/screens/chapter/chapter_detail.dart';
import 'package:sqillup_student/screens/chapter/completed.dart';
import 'package:sqillup_student/screens/chapter/ongoing.dart';
import 'package:sqillup_student/screens/chapter/wishlisted.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

import '../../../styles/style.dart';
import '../../../widgets/assignment_card.dart';
import '../../../widgets/student_activity_tabs.dart';
import 'package:sqillup_student/screens/dashboard/notifications.dart';

class Chapter extends StatefulWidget {
  const Chapter({Key? key}) : super(key: key);

  get selectedBottomTab => null;

  @override
  State<Chapter> createState() => _ChapterState();
}

class _ChapterState extends State<Chapter> {
  ChapterServices chapterServices = ChapterServices();
  var data;
  var lessonType = 'all';

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
    getAllChpter();
  }

  getAllChpter() async {
    data = await chapterServices.viewAllLesson();
    setState(() {
      data = data;
    });
  }

  get changeBottomTab => null;

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
            "Chapter 1",
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBoxH20(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    cursorColor: const Color(0xFF000000),
                    // controller: _searchController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Styles.sBlue,
                        ),
                        hintText: "Search",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.2)),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBoxH20(),
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
                            width: 53,
                            height: 53,
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
                const SizedBoxH20(),
                Transform.scale(
                  scale: 1.08,
                  child: Container(
                    transform: Matrix4.translationValues(
                      2.0,
                      0.0,
                      0.0,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios,
                            size: 20, color: Styles.sTextGray),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      lessonType = 'all';
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 12),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: lessonType == 'all'
                                          ? Color(0xff6ecacd)
                                          : Colors.white,
                                    ),
                                    child: Text(
                                      'All lessons',
                                      style: TextStyle(
                                        color: lessonType == 'all'
                                            ? Styles.sWhite
                                            : Colors.black,
                                        fontFamily: 'poppins-medium',
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBoxW15(),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      lessonType = 'ongoing';
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 12),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: lessonType == 'ongoing'
                                          ? Color(0xff6ecacd)
                                          : Colors.white,
                                    ),
                                    child: Text(
                                      'Ongoing',
                                      style: TextStyle(
                                        color: lessonType == 'ongoing'
                                            ? Styles.sWhite
                                            : Colors.black,
                                        fontFamily: 'poppins-medium',
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBoxW15(),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      lessonType = 'wishlist';
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 12),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: lessonType == 'wishlist'
                                          ? Color(0xff6ecacd)
                                          : Colors.white,
                                    ),
                                    child: Text(
                                      'Wishlisted',
                                      style: TextStyle(
                                        color: lessonType == 'wishlist'
                                            ? Styles.sWhite
                                            : Colors.black,
                                        fontFamily: 'poppins-medium',
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBoxW15(),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      lessonType = 'completed';
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 12),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: lessonType == 'completed'
                                          ? Color(0xff6ecacd)
                                          : Colors.white,
                                    ),
                                    child: Text(
                                      'Completed',
                                      style: TextStyle(
                                        color: lessonType == 'completed'
                                            ? Styles.sWhite
                                            : Colors.black,
                                        fontFamily: 'poppins-medium',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 20, color: Styles.sTextGray),
                      ],
                    ),
                  ),
                ),
                const SizedBoxH20(),
                if (lessonType == 'all')
                  data == null ? Center(child: CircularProgressIndicator()) : ChapterAll(data: data),
                if (lessonType == 'ongoing') ChapterOngoing(),
                if (lessonType == 'wishlist') ChapterWishlisted(),
                if (lessonType == 'completed') ChapterCompleted(),
                const SizedBoxH20(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
