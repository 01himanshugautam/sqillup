import 'package:flutter/material.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/question_card.dart';
import '../../../../widgets/rounded_icon_button.dart';
import '../../../../widgets/select_student.dart';
import '../../../../widgets/student_activity_tabs.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.transparent,
          // title: Text(
          //   'Make Payment',
          //   style: Styles.txtDark,
          // ),
          centerTitle: true,
          elevation: 0,
          leading: RoundedIconButton(
              isLight: false,
              padding: 7,
              icon: Icons.arrow_back_ios,
              navigateTo: Dashboard(selectedBottomTab: 1))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const SelectStudent(),
              const SizedBox(
                height: 25,
              ),
              const StudentActivityTabs(),
              const SizedBox(
                height: 25,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 295,
                      height: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          value: 0.7,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Styles.sTextBlue),
                          backgroundColor: Styles.sBgGray,
                        ),
                      ),
                    ),
                    Text(
                      '1 of 30',
                      style: Styles.txtSemiBoldDark,
                    )
                  ]),
              const SizedBox(
                height: 25,
              ),
              const QuestionCard()
            ],
          ),
        ),
      ),
    );
  }
}
