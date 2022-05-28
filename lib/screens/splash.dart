import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/styles/style.dart';

import '../shapes/circle_shape.dart';
import 'guides.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    // Navigator.pushReplacement(context,
    //     PageTransition(child:  FormBackground(activeForm: 'signin',), type: PageTransitionType.fade));
    Navigator.pushReplacement(context,
        PageTransition(child: const Guides(), type: PageTransitionType.fade));
    // PageTransition(child:  GuidesNew(), type: PageTransitionType.fade));
  }

  initScreen(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.sBgBlue,
        body: Stack(
          children: [
            //circles
            Container(
                transform: Matrix4.translationValues(260.0, -70.0, 0.0),
                child: CircleShape(color: Styles.sGreen, size: 200)),
            Container(
                transform: Matrix4.translationValues(6.0, 84.0, 0.0),
                child: CircleShape(color: Styles.sBlue, size: 95)),
            Container(
                transform: Matrix4.translationValues(-10.0, 271.0, 0.0),
                child: CircleShape(color: Styles.sOrange1, size: 38)),
            Container(
                transform: Matrix4.translationValues(260.0, 499.0, 0.0),
                child: CircleShape(color: Styles.sOrange1, size: 86)),
            Container(
                transform: Matrix4.translationValues(-100.0, 618.0, 0.0),
                child: CircleShape(color: Styles.sBlue, size: 208)),
            Container(
                transform: Matrix4.translationValues(303.0, 720.0, 0.0),
                child: CircleShape(color: Styles.syellow, size: 92)),
            // objects
            Container(
                transform: Matrix4.translationValues(96.0, 51.0, 0.0),
                child: Image.asset(
                  'assets/arrow.png',
                  width: 182,
                )),
            Container(
                transform: Matrix4.translationValues(0.0, 225.0, 0.0),
                child: Image.asset(
                  'assets/rect.png',
                  width: 77,
                )),
            Container(
                transform: Matrix4.translationValues(333.0, 169.0, 0.0),
                child: Image.asset(
                  'assets/Book.png',
                  width: 38,
                )),
            Container(
                transform: Matrix4.translationValues(0.0, 602.0, 0.0),
                child: Image.asset(
                  'assets/pencil.png',
                  width: 77,
                )),
            Container(
                transform: Matrix4.translationValues(244.0, 689.0, 0.0),
                child: Image.asset(
                  'assets/sci.png',
                  width: 77,
                )),

            // title

            Align(
              alignment: Alignment.center,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //   width: 134,
                    //   height: 134,
                    //   padding: EdgeInsets.all(20),
                    //   decoration: BoxDecoration(
                    //       shape: BoxShape.circle, color: Colors.white),
                    //   child:
                    Image.asset(
                      'assets/full_logo.png',
                      width: 180,
                      // height: 30,
                    ),
                    // SizedBox(height: 8,),
                    // ),
                    const Text(
                      '- the smart way to study -',
                      style: TextStyle(fontSize: 14),
                    )
                  ]),
            )
          ],
        ));
  }
}
