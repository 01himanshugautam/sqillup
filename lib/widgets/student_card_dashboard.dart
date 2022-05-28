import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

import '../styles/style.dart';

class StudentCardDashboard extends StatefulWidget {
  const StudentCardDashboard({Key? key}) : super(key: key);

  @override
  State<StudentCardDashboard> createState() => _StudentCardDashboardState();
}

class _StudentCardDashboardState extends State<StudentCardDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, top: 15, bottom: 15),
      decoration: BoxDecoration(
          color: Styles.sBgBlue1,
          borderRadius: BorderRadius.circular(10)),
      child: Stack(children: [
        Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/cardBgDesign.png',
              width: 70,
            )),
        Positioned(
            bottom: -10,
            right: 0,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(

                  Icons.logout,
                  color: Styles.sPenBlue,
                  size: 17,
                ))),
        Row(children: [
          AvatarView(
            borderWidth: 2,
            radius: 35,
            borderColor: Colors.white,
            avatarType: AvatarType.CIRCLE,
            backgroundColor: Styles.sBgGray.withOpacity(0.7),
            imagePath: 'assets/child.jpg',
            placeHolder: const CircularProgressIndicator(
              strokeWidth: 10,
              color: Styles.sBlue,
            ),
            errorWidget: Container(
              child: const Icon(
                Icons.error,
                size: 50,
              ),
            ),
          ),
          const SizedBox(
            width: 55,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Karina Michael',
                style: Styles.txtSemiBoldDark,
              ),
              Text(
                'KS-2, Senior High School',
                style: Styles.smallHeadingDark,
              ),
              const SizedBox(height: 20,)

            ],
          )
        ]),

      ]),
    );
  }
}
