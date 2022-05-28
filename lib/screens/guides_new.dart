import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/globe_functions/globe_functions.dart';
import 'package:sqillup_student/screens/select_role.dart';
import '../styles/style.dart';

class GuidesNew extends StatefulWidget {
  const GuidesNew({Key? key}) : super(key: key);

  @override
  State<GuidesNew> createState() => _GuidesNewState();
}

class _GuidesNewState extends State<GuidesNew> {
  List introScreens = [
    {
      "screen": "1",
      "heading": "Teaching",
      "desciption":
          "Nam at lectus urna duis. Mauris rhoncus aenean vel elit scelerisque mauris interdum posuere lorem.",
      "color": Styles.sBgBlue1,
      "image": "assets/intro/img1.png",
      "btn": "Next"
    },
    {
      "screen": "2",
      "heading": "Learning ",
      "desciption":
          "Nam at lectus urna duis. Mauris rhoncus aenean vel elit scelerisque mauris interdum posuere lorem.",
      "color": Styles.sBgBlue1,
      "image": "assets/intro/img2.png",
      "btn": "Next"
    },
    {
      "screen": "3",
      "heading": "Examination  ",
      "desciption":
          "Nam at lectus urna duis. Mauris rhoncus aenean vel elit scelerisque mauris interdum posuere lorem.",
      "color": Styles.sBgBlue1,
      "image": "assets/intro/img3.png",
      "btn": "get started"
    }
  ];

  int showIntro = 0;

  @override
  void initState() {
    showIntro = 0;
  }

  changeIntro() {
    setState(() {
      showIntro++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sBgBlue1,
      body: IntroScreen(
        intro: introScreens[showIntro],
        showIntro: showIntro,
        changeIntro: changeIntro,
      ),
    );
  }

// Widget introScreen(intro, context) {
//   return ;
// }
}

class IntroScreen extends StatefulWidget {
  var intro;
  Function changeIntro;
  int showIntro;

  IntroScreen(
      {Key? key,
      required this.intro,
      required this.changeIntro,
      required this.showIntro})
      : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Positioned(
          top: 150,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            child: Image.asset(
              widget.intro['image'],
              height: 300,
              key: UniqueKey(),
            ),
          )),
      Positioned(
        bottom: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            width: deviceWidth(context) - 20,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Styles.sBgGray.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 40,
                  offset: const Offset(0, 14), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text('Teaching', style: Styles.introHeading),
                  Text(widget.intro['heading'], style: Styles.introHeading),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(widget.intro['desciption']),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      for (var i = 0; i < 3; i++)
                        if (i == widget.showIntro)
                          SizedBox(
                            width: 15,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Styles.sBgBlue1,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF707070)
                                          .withOpacity(.5),
                                      offset: const Offset(0.0, 8.0),
                                      blurRadius: 10.0,
                                    )
                                  ]),
                            ),
                          )
                        else
                          SizedBox(
                            width: 15,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                color: Styles.sBgGray,
                                shape: BoxShape.circle,
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Color(0xFF707070).withOpacity(.5),
                                //     offset: Offset(0.0, 8.0),
                                //     blurRadius: 10.0,
                                //   )
                                // ]
                              ),
                            ),
                          ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () async {
                          print(widget.intro['screen']);
                          if (widget.showIntro == 2) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: const Home(),
                                    type: PageTransitionType.fade));
                          } else {
                            widget.changeIntro();
                          }
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${widget.intro['btn']}'.toUpperCase(),
                                style: Styles.TxtWhite,
                              ),
                            ]),
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Styles.sTextDarkBlue,
                            fixedSize: const Size(300, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)))),
                  ),
                ]),
          ),
        ),
      )
    ]);
  }
}
