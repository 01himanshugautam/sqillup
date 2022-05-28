// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sqillup_student/screens/courses/courses.dart';
// import 'package:sqillup_student/screens/badges/badges.dart';
// import 'package:sqillup_student/screens/chapter/chapter.dart';
// import 'package:sqillup_student/screens/courses/courses.dart';
// import 'package:sqillup_student/screens/curriculum/curriculum.dart';
import 'package:sqillup_student/screens/dashboard/screens/home_dashboard.dart';
import 'package:sqillup_student/screens/dashboard/screens/profile_dashboard.dart';
// import 'package:sqillup_student/screens/past_paper/past_paper.dart';
// import 'package:sqillup_student/screens/revision/revision.dart';
// import 'package:sqillup_student/screens/reward/reward.dart';
// import 'package:sqillup_student/screens/score/scores.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
// import 'package:sqillup_student/screens/worksheet/worksheet.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

import '../../styles/style.dart';

class Dashboard extends StatefulWidget {
  int selectedBottomTab;

  Dashboard({Key? key, required this.selectedBottomTab}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  void changeBottomTab(int index) async {
    // HttpServices httpServices = HttpServices();
    if (index == 3) {
      _modalBottomSheetMenu();
    } else {
      setState(() {
        widget.selectedBottomTab = index;
      });
    }
    // print(index);
    // if (index == 0) {
    //   print('im location');
    // }
    // if (index == 1) {
    //   // updateTeamData();
    // }
    // if (index == 3) {
    //   var dd = await getUserData();
    //   updateUserDetails(dd);
    //   var teamreq = await httpServices.getTeamRequests();
    //   setState(() {
    //     teamRequests = teamreq;
    //   });
    // }

    // pushNewScreen(
    //   context,
    //   screen: Chapter(),
    //   withNavBar: true, // OPTIONAL VALUE. True by default.
    //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Styles.sBgBlue1,
          // ignore: prefer_const_literals_to_create_immutables
          body: IndexedStack(index: widget.selectedBottomTab, children: [
            const HomeDashboard(),
             Courses(),
            // PastPaper(),
            // const ProfileDashboard(),
            // Chapter()
          ]),
          bottomNavigationBar: SafeArea(
            child: BottomNavigationBar(
              // showUnselectedLabels: false,
              // showSelectedLabels: false,
              selectedIconTheme: const IconThemeData(color: Styles.sBlue),
              selectedItemColor: Styles.sBlue,
              currentIndex: widget.selectedBottomTab,
              selectedLabelStyle:
                  const TextStyle(fontSize: 10, fontFamily: 'poppins-bold'),
              backgroundColor: Colors.white,
              unselectedLabelStyle:
                  const TextStyle(fontSize: 10, fontFamily: 'poppins-bold'),
              unselectedIconTheme: const IconThemeData(color: Styles.sPenBlue),
              elevation: 0,
              iconSize: 27,
              onTap: changeBottomTab,
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/bot_home.png"),
                  ),
                  label: ("Home"),
                  // activeIcon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/bot_course.png"),
                  ),
                  label: ("Courses"),
                  // activeIcon: Icon(Icons.menu_book),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/bot_pastpaper.png"),
                  ),
                  label: ("Past Paper"),
                  // activeIcon: Icon(Icons.library_books),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/bot_more.png"),
                  ),
                  label: ("More"),
                  // activeIcon: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
        ));
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        useRootNavigator: true,
        context: context,
        builder: (builder) {
          return Container(
            height: 410.0,
            color: Styles.sBgBlue,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 0.0, bottom: 30.0),
                      child: Image.asset(
                        "assets/images/arrow_down.png",
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 12.0, bottom: 30.0),
                  child: GridView.count(
                    shrinkWrap: true,
                    primary: true,
                    crossAxisCount: 3,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context, rootNavigator: true).push(
                          //     MaterialPageRoute(
                          //         builder: (context) => Worksheet(),
                          //         maintainState: true));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xff0075FF),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset(
                                  "assets/images/worksheet_icon.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            SizedBoxH10(),
                            Text(
                              "Worksheet",
                              style: Styles.botSheetTitle,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context, rootNavigator: true).push(
                          //     MaterialPageRoute(
                          //         builder: (context) => Revision(),
                          //         maintainState: false));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffFFC700),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset(
                                  "assets/images/revision_icon.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            SizedBoxH10(),
                            Text(
                              "Revision",
                              style: Styles.botSheetTitle,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context, rootNavigator: false).push(
                          //     MaterialPageRoute(
                          //         builder: (context) => Curriculum(),
                          //         maintainState: false));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xff46B482),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset(
                                  "assets/images/curriculum_icon.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            SizedBoxH10(),
                            Text(
                              "Curriculum",
                              style: Styles.botSheetTitle,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Score()),
                          // );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xff32BC19),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset(
                                  "assets/images/score_icon.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            SizedBoxH10(),
                            Text(
                              "Score",
                              style: Styles.botSheetTitle,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Reward()),
                          // );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffF6511D),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset(
                                  "assets/images/curriculum_icon.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            SizedBoxH10(),
                            Text(
                              "Reward",
                              style: Styles.botSheetTitle,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Badges()),
                          // );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xff53B9BC),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Image.asset(
                                  "assets/images/medal.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            SizedBoxH10(),
                            Text(
                              "Badges",
                              style: Styles.botSheetTitle,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // ),
          );
        });
  }
}
