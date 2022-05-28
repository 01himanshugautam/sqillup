import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/screens/select_role.dart';
import 'package:sqillup_student/styles/style.dart';

class Guides extends StatefulWidget {
  const Guides({Key? key}) : super(key: key);

  @override
  State<Guides> createState() => _GuidesState();
}

class _GuidesState extends State<Guides> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(builder: (_) => Home()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Styles.sBgBlue,
      imagePadding: EdgeInsets.zero,
    );
    return Scaffold(
        body: Container(
      // margin: EdgeInsets.only(top: 200),
      child: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Styles.sBgBlue,
        globalHeader: const Align(
          alignment: Alignment.topRight,
          // child: SafeArea(
          //   child: Padding(
          //     padding: EdgeInsets.only(top: 16, right: 16),
          //   ),
          // ),
        ),
        pages: [
          PageViewModel(
            titleWidget: Container(
              margin: const EdgeInsets.only(top: 6),
              width: 66,
              height: 66,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF707070).withOpacity(.5),
                      offset: const Offset(0.0, 14.0),
                      blurRadius: 40.0,
                    )
                  ]),
              child: Image.asset(
                'assets/mainLogo.png',
                // width: 180,
                height: 30,
              ),
            ),

            bodyWidget: Column(
              children: [
                const SizedBox(height: 41),
                Image.asset(
                  'assets/te.png',
                  width: 216,
                ),
                const SizedBox(height: 29),
                const Text(
                  'Teaching',
                  style: Styles.introHeading,
                ),
                const SizedBox(height: 10),
                Container(
                  // width: 274,
                  child: const Text(
                      "rs are spread out evenly so that the reader’s attentio is focused on the layout of the text",
                      textAlign: TextAlign.center,
                      style: Styles.introPara),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: const Home(),
                                  type: PageTransitionType.fade));
                        },
                        child: const Text(
                          'Skip',
                          style: Styles.homeButtons,
                        ),
                      ),
                    ]),
              ],
            ),
            // image: _buildImage('img1.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            titleWidget: Container(
              margin: const EdgeInsets.only(top: 6),
              width: 66,
              height: 66,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF707070).withOpacity(.5),
                      offset: const Offset(0.0, 14.0),
                      blurRadius: 40.0,
                    )
                  ]),
              child: Image.asset(
                'assets/mainLogo.png',
                // width: 180,
                height: 30,
              ),
            ),

            bodyWidget: Column(
              children: [
                const SizedBox(height: 41),
                Image.asset(
                  'assets/le.png',
                  width: 216,
                ),
                const SizedBox(height: 39),
                const Text(
                  'Learning ',
                  style: Styles.introHeading,
                ),
                const SizedBox(height: 10),
                Container(
                  // width: 274,
                  child: const Text(
                      "rs are spread out evenly so that the reader’s attentio is focused on the layout of the text",
                      textAlign: TextAlign.center,
                      style: Styles.introPara),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: const Home(),
                                  type: PageTransitionType.fade));
                        },
                        child: const Text(
                          'Skip',
                          style: Styles.homeButtons,
                        ),
                      ),
                    ]),
              ],
            ),
            // image: _buildImage('img1.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            titleWidget: Container(
              margin: const EdgeInsets.only(top: 6),
              width: 66,
              height: 66,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF707070).withOpacity(.5),
                      offset: const Offset(0.0, 14.0),
                      blurRadius: 40.0,
                    )
                  ]),
              child: Image.asset(
                'assets/mainLogo.png',
                // width: 180,
                height: 30,
              ),
            ),

            bodyWidget: Column(
              children: [
                const SizedBox(height: 41),
                Image.asset(
                  'assets/ex.png',
                  width: 216,
                ),
                const SizedBox(height: 39),
                const Text(
                  'Examination',
                  style: Styles.introHeading,
                ),
                const SizedBox(height: 10),
                Container(
                  // width: 274,
                  child: const Text(
                      "rs are spread out evenly so that the reader’s attentio is focused on the layout of the text",
                      textAlign: TextAlign.center,
                      style: Styles.introPara),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: const Home(),
                                  type: PageTransitionType.fade));
                        },
                        child: const Text(
                          'Start',
                          style: Styles.homeButtons,
                        ),
                      ),
                    ]),
              ],
            ),
            // image: _buildImage('img1.png'),
            decoration: pageDecoration,
          ),
        ],
        onDone: () => _onIntroEnd(context),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: false,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        showNextButton: false,
        showDoneButton: false,
        //rtl: true, // Display as right-to-left
        back: const Icon(Icons.arrow_back),
        skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        // controlsMargin: const EdgeInsets.all(16),
        // controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          // size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          // activeSize: Size(10.0, 10.0),
          activeColor: Styles.sBlue,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    ));
  }
}
