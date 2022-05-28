import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';

import '../../../styles/style.dart';
import '../../../widgets/dropdown_with_img.dart';
import '../../../widgets/growth_tabs.dart';
import '../../../widgets/reward_small_card.dart';
import '../notifications.dart';
import 'growth/create_badges.dart';
import 'growth/create_rewards.dart';
import 'growth/score_view.dart';

class GrowthDashboard extends StatefulWidget {
  const GrowthDashboard({Key? key}) : super(key: key);

  @override
  State<GrowthDashboard> createState() => _GrowthDashboardState();
}

class _GrowthDashboardState extends State<GrowthDashboard> {
  List activityTabs = [
    'Score',
    'Rewards',
    'Badges',
  ];
  var selectedTab = 'Score';

  updateTab(tab) {
    setState(() {
      selectedTab = tab;
    });
  }

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
          'Growth',
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
                                selectedBottomTab: 2,
                              ),
                            ),
                            type: PageTransitionType.fade));
                  },
                  icon: const Icon(Icons.notifications_rounded)))
        ],
      ),
      body: SingleChildScrollView(child: Builder(builder: (_) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GrowthTabs(
                  updateTab: updateTab,
                  tabs: activityTabs,
                  selectedTab: selectedTab),
            ),
            const SizedBox(
              height: 28,
            ),
            if (selectedTab == 'Score')
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    DropDownWithImg(
                        dropDownHint: 'Select student',
                        items: const [
                          {
                            "id": '1',
                            "image": "assets/parent.jpg",
                            "name": "Sub1"
                          },
                          {
                            "id": '2',
                            "image": "assets/parent.jpg",
                            "name": "Sub2"
                          },
                          {
                            "id": '3',
                            "image": "assets/parent.jpg",
                            "name": "Sub3"
                          },
                          {
                            "id": '4',
                            "image": "assets/parent.jpg",
                            "name": "Sub4"
                          },
                        ]),
                    const SizedBox(
                      height: 14,
                    ),
                    DropDownWithImg(
                        dropDownHint: 'Select subject',
                        items: const [
                          {
                            "id": '1',
                            "image": "assets/subjects/brain.png",
                            "name": "Sub1"
                          },
                          {
                            "id": '2',
                            "image": "assets/subjects/sub1.png",
                            "name": "Sub2"
                          },
                          {
                            "id": '3',
                            "image": "assets/subjects/sub2.png",
                            "name": "Sub3"
                          },
                          {
                            "id": '4',
                            "image": "assets/subjects/sub3.png",
                            "name": "Sub4"
                          },
                        ]),
                    const SizedBox(
                      height: 14,
                    ),
                    DropDownWithImg(
                        dropDownHint: 'Select Exam Type',
                        items: const [
                          {"id": '1', "name": "ex1"},
                          {"id": '2', "name": "ex2"},
                          {"id": '3', "name": "ex3"},
                          {"id": '4', "name": "ex4"},
                        ]),
                    const SizedBox(
                      height: 14,
                    ),
                    DropDownWithImg(
                        dropDownHint: 'Select Chapter',
                        items: const [
                          {"id": '1', "name": "ch1"},
                          {"id": '2', "name": "ch2"},
                          {"id": '3', "name": "ch3"},
                          {"id": '4', "name": "ch4"},
                        ]),
                    const SizedBox(
                      height: 28,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const ScoreView(),
                                type: PageTransitionType.fade));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Proceed'.toUpperCase(),
                              style: Styles.TxtWhite,
                            ),
                          ]),
                      style: Styles.mainElevatedBtn,
                    ),
                  ],
                ),
              ),
            if (selectedTab == 'Rewards')
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  DropDownWithImg(dropDownHint: 'Select student', items: const [
                    {"id": '1', "image": "assets/parent.jpg", "name": "Sub1"},
                    {"id": '2', "image": "assets/parent.jpg", "name": "Sub2"},
                    {"id": '3', "image": "assets/parent.jpg", "name": "Sub3"},
                    {"id": '4', "image": "assets/parent.jpg", "name": "Sub4"},
                  ]),
                  const SizedBox(
                    height: 14,
                  ),
                  DropDownWithImg(dropDownHint: 'Select subject', items: const [
                    {
                      "id": '1',
                      "image": "assets/subjects/brain.png",
                      "name": "Sub1"
                    },
                    {
                      "id": '2',
                      "image": "assets/subjects/sub1.png",
                      "name": "Sub2"
                    },
                    {
                      "id": '3',
                      "image": "assets/subjects/sub2.png",
                      "name": "Sub3"
                    },
                    {
                      "id": '4',
                      "image": "assets/subjects/sub3.png",
                      "name": "Sub4"
                    },
                  ]),
                  const SizedBox(
                    height: 37,
                  ),
                  const RewardSmallCard(),
                  const SizedBox(
                    height: 32,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: CreateRewards(
                                isEdit: false,
                              ),
                              type: PageTransitionType.fade));
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Create new Reward'.toUpperCase(),
                            style: Styles.TxtWhite,
                          ),
                        ]),
                    style: Styles.mainElevatedBtn,
                  ),
                ]),
              ),
            if (selectedTab == 'Badges')
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  DropDownWithImg(dropDownHint: 'Select student', items: const [
                    {"id": '1', "image": "assets/parent.jpg", "name": "Sub1"},
                    {"id": '2', "image": "assets/parent.jpg", "name": "Sub2"},
                    {"id": '3', "image": "assets/parent.jpg", "name": "Sub3"},
                    {"id": '4', "image": "assets/parent.jpg", "name": "Sub4"},
                  ]),
                  const SizedBox(
                    height: 14,
                  ),
                  DropDownWithImg(dropDownHint: 'Select subject', items: const [
                    {
                      "id": '1',
                      "image": "assets/subjects/brain.png",
                      "name": "Sub1"
                    },
                    {
                      "id": '2',
                      "image": "assets/subjects/sub1.png",
                      "name": "Sub2"
                    },
                    {
                      "id": '3',
                      "image": "assets/subjects/sub2.png",
                      "name": "Sub3"
                    },
                    {
                      "id": '4',
                      "image": "assets/subjects/sub3.png",
                      "name": "Sub4"
                    },
                  ]),
                  const SizedBox(
                    height: 37,
                  ),
                  const RewardSmallCard(),
                  const SizedBox(
                    height: 32,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: CreateBadges(
                                isEdit: false,
                              ),
                              type: PageTransitionType.fade));
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Create new Badges'.toUpperCase(),
                            style: Styles.TxtWhite,
                          ),
                        ]),
                    style: Styles.mainElevatedBtn,
                  ),
                ]),
              ),
          ],
        );
      })),
    );
  }
}
