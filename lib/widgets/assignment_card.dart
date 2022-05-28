import 'package:flutter/material.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

import '../styles/style.dart';

class AssignmentCard extends StatefulWidget {
  final String? lessionName;
  AssignmentCard({Key? key, this.lessionName}) : super(key: key);

  @override
  State<AssignmentCard> createState() => _AssignmentCardState();
}

class _AssignmentCardState extends State<AssignmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Styles.sOrange5,
                Styles.sWhite.withOpacity(0.7),
              ],
            )),
        child: Stack(children: [
          Positioned(
              right: 0,
              top: 0,
              child: Center(
                child: Container(
                  width: 15.0,
                  height: 15.0,
                  decoration: const BoxDecoration(
                    // ignore: unnecessary_const
                    image: const DecorationImage(
                      // fit: BoxFit.fill,
                      image: AssetImage('assets/images/heart.png'),
                    ),
                  ),
                ),
              )),
          Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 30,
                height: 30,
                // padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.2),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF707070).withOpacity(.15),
                        offset: const Offset(0.0, 6.0),
                        blurRadius: 12.0,
                      )
                    ]),
                child: const Center(
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage:
                        AssetImage('assets/images/chemistry_3.png'),
                    backgroundColor: Colors.yellow,
                  ),
                ),
              )),
          Positioned(
              right: 0, top: 0, child: Image.asset('assets/cardBgDesign.png')),
          Positioned(
            top: 90,
            child: Text(
              widget.lessionName ?? 'Lesson 1.1',
              style: Styles.subHeadingSemiBold,
            ),
          ),
          Positioned(
            top: 115,
            child: Text(
              'The Particle Models',
              style: Styles.payCardTextDark,
            ),
          ),
          Positioned(
            top: 160,
            // width: 15,
            child: Row(children: [
              Text(
                '20 minutes',
                style: Styles.payCardTextDark,
              ),
              SizedBox(
                width: 58,
              ),
              Image.asset(
                'assets/images/play.png',
                width: 35,
                height: 35,
              )
            ]),
          )
        ]));
  }
}
