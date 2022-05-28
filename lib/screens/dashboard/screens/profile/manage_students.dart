import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/rounded_icon_button.dart';
// import '../../../student_add_steps/add_student.dart';

class ManageStudents extends StatefulWidget {
  const ManageStudents({Key? key}) : super(key: key);

  @override
  State<ManageStudents> createState() => _ManageStudentsState();
}

class _ManageStudentsState extends State<ManageStudents> {
  List studentList = [
    {
      "image": "assets/parent.jpg",
    },
    {
      "image": "assets/child.jpg",
    },
    {
      "image": "assets/child.jpg",
    },
    {
      "image": "assets/child.jpg",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sBgBlue,
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Manage student',
            style: Styles.subHeadingSemiBold,
          ),
          centerTitle: true,
          elevation: 0,
          // actions: [
          //   Container(
          //       padding: EdgeInsets.only(right: 10),
          //       child: IconButton(
          //           onPressed: () {
          //             Navigator.push(
          //                 context,
          //                 PageTransition(
          //                     child: Notifications(),
          //                     type: PageTransitionType.fade));
          //           },
          //           icon: Icon(
          //             Icons.notifications_rounded,
          //             color: Styles.sTextDarkBlue,
          //           )))
          // ],
          leading: RoundedIconButton(
              isLight: false,
              padding: 7,
              icon: Icons.arrow_back_ios,
              navigateTo: Dashboard(
                selectedBottomTab: 3,
              ))),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Add your students here',
                style: Styles.paySubHeading,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                  'Nam at lectus urna duis. Mauris\nrhoncus aenean vel elit scelerisque',
                  style: Styles.mid1Heading,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 52,
              ),
              SizedBox(
                height: studentList.length * 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: GridView.count(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    children: <Widget>[
                      for (var tiles in studentList)
                        studentList.indexOf(tiles) + 1 == studentList.length
                            ? Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Styles.sBgGray.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 8,
                                            offset: const Offset(0,
                                                14), // changes position of shadow
                                          ),
                                        ],
                                        color: Colors.white,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     PageTransition(
                                          //         child: AddStudent(
                                          //           checkAuth: true,
                                          //           isEdit: false,
                                          //         ),
                                          //         type:
                                          //             PageTransitionType.fade));
                                        },
                                        child: Container(
                                          height: 117,
                                          width: 117,
                                          padding: const EdgeInsets.all(20),
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Styles.sBlue),
                                          child: const Icon(
                                            Icons.add,
                                            size: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),

                                    // Text(rewardTiles.indexOf(tiles).toString(), style: Styles.txtDark,)
                                  ],
                                ),
                              )
                            : Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     PageTransition(
                                        //         child: AddStudent(
                                        //           checkAuth: true,
                                        //           isEdit: true,
                                        //         ),
                                        //         type: PageTransitionType.fade));
                                      },
                                      child: Container(
                                          height: 117,
                                          width: 117,
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 6, horizontal: 20),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Styles.sBlue, width: 3),
                                            color: Colors.white,
                                          ),
                                          child: CircleAvatar(
                                              radius: 60.0,
                                              backgroundImage:
                                                  AssetImage(tiles['image']))),
                                    ),

                                    // Text(rewardTiles.indexOf(tiles).toString(), style: Styles.txtDark,)
                                  ],
                                ),
                              )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
