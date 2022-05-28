import 'package:flutter/material.dart';

import '../styles/style.dart';

class StudentActivityTabs extends StatefulWidget {
  const StudentActivityTabs({Key? key}) : super(key: key);

  @override
  State<StudentActivityTabs> createState() => _StudentActivityTabsState();
}

class _StudentActivityTabsState extends State<StudentActivityTabs> {
  List activityTabs = [
    'All Lesson',
    'Ongoing',
    'Wishlisted',
    'Completed',
  ];
  var selectedTab = 'All Lesson';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var sub in activityTabs)
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = sub;
                });
              },
              child: Container(
                height: 36,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: selectedTab == sub ? Styles.sBlue : Colors.white,
                ),
                child: Text(
                  sub,
                  style: selectedTab == sub ? Styles.TxtWhite : Styles.txtDark,
                ),
              ),
            )
        ],
      ),
    );
  }
}
