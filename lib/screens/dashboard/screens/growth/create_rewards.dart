import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';
import 'package:sqillup_student/screens/dashboard/screens/growth/reward_titles.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/dropdown_with_img.dart';
import '../../../../widgets/input_widget.dart';
import '../../../../widgets/rounded_icon_button.dart';
import '../../notifications.dart';

class CreateRewards extends StatefulWidget {
  bool isEdit;
  CreateRewards({Key? key, required this.isEdit}) : super(key: key);

  @override
  State<CreateRewards> createState() => _CreateRewardsState();
}

class _CreateRewardsState extends State<CreateRewards> {
  TextEditingController rewardPointsController = TextEditingController();
  TextEditingController msgController = TextEditingController();
  FToast fToast = FToast();
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Styles.sTextBlue,
      ),
      child: SizedBox(
        width: 300,
        child: Row(
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 24,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Text("Reward ${widget.isEdit ? 'updated' : 'added'} successfully",
                style: Styles.tosterText),
          ],
        ),
      ),
    );
    fToast.showToast(
        child: toast,
        toastDuration: const Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(margin: const EdgeInsets.only(top: 30), child: child),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: Colors.transparent,
            title: Text(
              '${widget.isEdit ? 'Update' : 'Create'} Rewards',
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
                                  backTo: CreateRewards(
                                    isEdit: false,
                                  ),
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
                navigateTo: Dashboard(
                  selectedBottomTab: 2,
                ))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
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
                height: 14,
              ),
              DropDownWithImg(dropDownHint: 'Select Category', items: const [
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
                  dropDownHint: 'Select Reward Title',
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
              MakeInput(
                isPreIcon: false,
                isSurIcon: true,
                isShadow: true,
                label: 'Enter Reward Points',
                bgColor: Colors.white,
                lableOpacity: 0.5,
                inputController: rewardPointsController,
                required: false,
              ),
              MakeInput(
                isPreIcon: false,
                isSurIcon: false,
                isShadow: true,
                label: 'Enter Message / Notes',
                bgColor: Colors.white,
                lableOpacity: 0.5,
                inputController: msgController,
                required: false,
              ),
              Text(
                'The message here will be displayed to your children once they scored the\nabove defined reward points.',
                style: Styles.lightCardText,
              ),
              const SizedBox(
                height: 33,
              ),
              ElevatedButton(
                onPressed: () async {
                  _showToast();
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${widget.isEdit ? 'Update' : 'Add'} reward'
                            .toUpperCase(),
                        style: Styles.TxtWhite,
                      ),
                    ]),
                style: Styles.mainElevatedBtn,
              ),
              const SizedBox(
                height: 27,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const RewardTitles(),
                            type: PageTransitionType.fade));
                  },
                  child: Text(
                    'See created rewards Title'.toUpperCase(),
                    style: Styles.homeButtons,
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
