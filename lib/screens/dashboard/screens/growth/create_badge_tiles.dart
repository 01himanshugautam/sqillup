import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/screens/dashboard/screens/growth/reward_titles.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/input_widget.dart';
import '../../../../widgets/rounded_icon_button.dart';
import '../../notifications.dart';

class CreateBadgeTiles extends StatefulWidget {
  const CreateBadgeTiles({Key? key}) : super(key: key);

  @override
  State<CreateBadgeTiles> createState() => _CreateBadgeTilesState();
}

class _CreateBadgeTilesState extends State<CreateBadgeTiles> {
  TextEditingController rewardTitleNameController = TextEditingController();
  TextEditingController attachedIconNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                toolbarHeight: 80,
                backgroundColor: Colors.transparent,
                title: const Text(
                  'Create Badge title',
                  style: Styles.subHeadingSemiBold,
                ),
                centerTitle: true,
                elevation: 0,
                actions: [
                  Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Notifications(
                                      backTo: const CreateBadgeTiles(),
                                    ),
                                    type: PageTransitionType.fade));
                          },
                          icon: const Icon(
                            Icons.notifications_rounded,
                            color: Styles.sTextDarkBlue,
                          )))
                ],
                leading: RoundedIconButton(
                    isLight: false,
                    padding: 7,
                    icon: Icons.arrow_back_ios,
                    navigateTo: const RewardTitles())),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    MakeInput(
                      isPreIcon: true,
                      isSurIcon: false,
                      label: 'Enter badge title name',
                      lableOpacity: 1,
                      required: false,
                      isShadow: true,
                      inputController: rewardTitleNameController,
                      bgColor: Colors.white,
                    ),
                    MakeInput(
                      isPreIcon: true,
                      isSurIcon: true,
                      label: 'Attach icon',
                      lableOpacity: 1,
                      required: false,
                      isShadow: true,
                      inputController: attachedIconNameController,
                      bgColor: Colors.white,
                    ),
                    Text(
                      'After creating the badges title you can view this on Badges title screen.',
                      style: Styles.lightCardText,
                    ),
                    const SizedBox(
                      height: 230,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        // _showToast();
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Save title'.toUpperCase(),
                              style: Styles.TxtWhite,
                            ),
                          ]),
                      style: Styles.mainElevatedBtn,
                    ),
                  ],
                ),
              ),
            )));
  }
}
