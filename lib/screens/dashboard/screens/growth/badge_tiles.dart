import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/rounded_icon_button.dart';
import '../../notifications.dart';
import 'create_badge_tiles.dart';
import 'create_badges.dart';

class BadgeTiles extends StatefulWidget {
  const BadgeTiles({Key? key}) : super(key: key);

  @override
  State<BadgeTiles> createState() => _BadgeTilesState();
}

class _BadgeTilesState extends State<BadgeTiles> {
  List rewardTiles = [
    {"image": "assets/walk.png", "name": "Sun"},
    {"image": "assets/Video_2_.png", "name": "Mars"},
    {"image": "assets/television.png", "name": "Moon"},
    {"image": "assets/reading.png", "name": "Earth"},
    {"image": "assets/joystick.png", "name": "Jupiter"},
    {"image": "assets/Green_apple_2_.png", "name": "Food"},
    {"image": "assets/sunset.png", "name": "Beach"},
    {"image": "assets/hiking-boots.png", "name": "Hike"},
    {"image": "assets/bycicle.png", "name": "Cycling"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                toolbarHeight: 80,
                backgroundColor: Colors.transparent,
                title: const Text(
                  'Badges',
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
                                    child: Notifications(backTo: const BadgeTiles(),),
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
                    navigateTo: CreateBadges(isEdit: false,))),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 42,
                crossAxisSpacing: 10,
                children: <Widget>[
                  for (var tiles in rewardTiles)
                    rewardTiles.indexOf(tiles) + 1 == rewardTiles.length
                        ? Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Styles.sBgGray.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: const Offset(0,
                                      14), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, PageTransition(
                                    child: const CreateBadgeTiles(),
                                    type: PageTransitionType.fade));
                              },
                              child: Container(

                                height: 70,
                                width: 70,
                                padding: const EdgeInsets.all(20),
                                decoration: DottedDecoration(
                                  shape: Shape.circle,
                                  color: Styles.sBlue,
                                  strokeWidth: 2,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Styles.sBlue,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            'Enter Title',
                            style: Styles.txtDark,
                          )
                          // Text(rewardTiles.indexOf(tiles).toString(), style: Styles.txtDark,)
                        ],
                      ),
                    )
                        : Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 76,
                            width: 76,
                            margin: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 20),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Styles.sBgGray.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: const Offset(0,
                                      14), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              tiles['image'],
                              width: 35,
                              height: 35,
                            ),
                          ),
                          Text(
                            tiles["name"],
                            style: Styles.txtDark,
                          )
                          // Text(rewardTiles.indexOf(tiles).toString(), style: Styles.txtDark,)
                        ],
                      ),
                    )
                ],
              ),
            )));
  }
}
