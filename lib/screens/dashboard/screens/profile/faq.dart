import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';
import 'package:sqillup_student/screens/dashboard/notifications.dart';

import '../../../../styles/style.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  bool viewMore = false;
  List headingList = [
    {"name": "Student"},
    {"name": "Parent"},
    {"name": "Subscription"},
    {"name": "Payment"},
    {"name": "Sign up"},
  ];

  List parantFaqs = [
    {
      "ques": "How often are the Issues released?",
      "ans":
          "Every month. If you pledge for Issue 01 only, this will be sent to you in December 2019. If you sign up for 12 Issues, you will receive one each month, ending next November 2020."
    },
    {"ques": "How do I make purchase in credit card?", "ans": "sample"}
  ];

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
            "FAQ",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var names in headingList)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Styles.sBlue, width: 1),
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(names['name']),
                    )
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            for (var qs in parantFaqs)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
                decoration: Styles.whiteCard,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 6.0,
                                color: Styles.sBlue,
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Text(
                                qs['ques'],
                                style: Styles.txtDark,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                viewMore ? viewMore = false : viewMore = true;
                              });
                            },
                            child: Icon(
                              viewMore
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              size: 21.0,
                              color: Styles.sBlue,
                            ),
                          )
                        ],
                      ),
                      if (viewMore)
                        Column(
                          children: [
                            const SizedBox(
                              height: 14,
                            ),
                            Text(
                              qs['ans'],
                              style: Styles.midHeadingDark,
                            ),
                            const SizedBox(
                              height: 14,
                            )
                          ],
                        )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
