import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/rounded_icon_button.dart';
import '../../dashboard.dart';
import '../../notifications.dart';

class SwitchStudent extends StatefulWidget {
  const SwitchStudent({Key? key}) : super(key: key);

  @override
  State<SwitchStudent> createState() => _SwitchStudentState();
}

class _SwitchStudentState extends State<SwitchStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sBgBlue,
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Switch student',
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
                                backTo: const SwitchStudent(),
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
                selectedBottomTab: 3,
              ))),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text('Select student to go to there account'),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Styles.sGrBlue,
                        Styles.sTextBlue.withOpacity(0.7),
                      ],
                    )),
                child: Stack(children: [
                  Positioned(
                      top: 20,
                      left: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Karina Michael',style: Styles.txtSemiBoldDark,),
                          Text('KS-2, Senior High School',style: Styles.smallHeadingDark,)
                        ],
                      )),
                  Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                          height: 68,
                          width: 68,
                          margin:
                              const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                            color: Colors.white,
                          ),
                          child: const CircleAvatar(
                              radius: 60.0,
                              backgroundImage: AssetImage('assets/st.png')))),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Image.asset('assets/cardBgDesign.png')),
                ]))
          ],
        ),
      ),
    );
  }
}
