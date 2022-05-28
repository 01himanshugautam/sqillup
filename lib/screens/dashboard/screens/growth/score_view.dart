import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/meter_view.dart';
import '../../../../widgets/rounded_icon_button.dart';

class ScoreView extends StatefulWidget {
  const ScoreView({Key? key}) : super(key: key);

  @override
  State<ScoreView> createState() => _ScoreViewState();
}

class _ScoreViewState extends State<ScoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sTextDarkBlue,
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          // title: Text(
          //   'Payment Methods ',
          //   style: Styles.txtDark,
          // ),
          centerTitle: true,
          elevation: 0,
          leading: RoundedIconButton(
              isLight: true,
              padding: 7,
              icon: Icons.arrow_back_ios,
              navigateTo: Dashboard(
                selectedBottomTab: 2,
              ))),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 77,
                  height: 77,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(77),
                  ),
                  child: AvatarView(
                    borderWidth: 2,
                    radius: 50,
                    borderColor: Colors.white,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Styles.sBgGray.withOpacity(0.7),
                    imagePath: 'assets/parent.jpg',
                    placeHolder: const CircularProgressIndicator(
                      strokeWidth: 10,
                      color: Styles.sBlue,
                    ),
                    errorWidget: Container(
                      child: const Icon(
                        Icons.error,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Karina Michael',
                style: Styles.headingWhite,
              ),
              Text(
                'Purus in mollis nunc sed id semper\nTellus molestie nunc non blandit',
                style: Styles.txtWhite,
              ),
              const SizedBox(
                height: 35,
              ),
              const SizedBox(
                width: 300,
                height: 300,
                child: MeterView(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '98%',
                        style: Styles.payCardTitleLight,
                      ),
                      Text(
                        'Worksheet',
                        style: Styles.darkCardTitle,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '82%',
                        style: Styles.payCardTitleLight,
                      ),
                      Text(
                        'Selftest',
                        style: Styles.darkCardTitle,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '91%',
                        style: Styles.payCardTitleLight,
                      ),
                      Text(
                        'Assignments',
                        style: Styles.darkCardTitle,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () async {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Download'.toUpperCase(),
                        style: Styles.TxtWhite,
                      ),
                    ]),
                style: Styles.mainElevatedBtn,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'When you download the score you will get\nan email with detailed score, for more details',
                style: Styles.lightCardTitle,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
