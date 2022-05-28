import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sqillup_student/styles/style.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

class ChapterOngoing extends StatefulWidget {
  ChapterOngoing({Key? key}) : super(key: key);

  @override
  State<ChapterOngoing> createState() => _ChapterOngoingState();
}

class _ChapterOngoingState extends State<ChapterOngoing> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // Get.to(() => ChapterDetail());
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Styles.sWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Styles.sWhite,
                  ),
                ),
                const SizedBoxW20(),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lesson 1.2',
                        style: Styles.subHeadingMedium,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Introduction to Atom',
                        style: Styles.subHeadingMedium,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LinearPercentIndicator(
                            width: 260,
                            lineHeight: 8.0,
                            percent: 0.4,
                            padding: EdgeInsets.all(0),
                            barRadius: Radius.circular(20),
                            backgroundColor: Color(0xFFEDF0FF),
                            progressColor: Color(0xff6ecacd),
                          ),
                          Text(
                            '14:48',
                            style: Styles.Timer,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBoxH20(),
        InkWell(
          onTap: () {
            // Get.to(() => ChapterDetail());
          },
          child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Styles.sWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Styles.sWhite,
                    ),
                  ),
                  const SizedBoxW20(),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lesson 1.2',
                          style: Styles.subHeadingMedium,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Introduction to Atom',
                          style: Styles.subHeadingMedium,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LinearPercentIndicator(
                              width: 260,
                              lineHeight: 8.0,
                              percent: 0.2,
                              padding: EdgeInsets.all(0),
                              barRadius: Radius.circular(20),
                              backgroundColor: Color(0xFFEDF0FF),
                              progressColor: Color(0xff6ecacd),
                            ),
                            Text(
                              '15:48',
                              style: Styles.Timer,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        const SizedBoxH20(),
        InkWell(
          onTap: () {
            // Get.to(() => ChapterDetail());
          },
          child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Styles.sWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Styles.sWhite,
                    ),
                  ),
                  const SizedBoxW20(),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lesson 1.2',
                          style: Styles.subHeadingMedium,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Introduction to Atom',
                          style: Styles.subHeadingMedium,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LinearPercentIndicator(
                              width: 260,
                              lineHeight: 8.0,
                              percent: 0.75,
                              padding: EdgeInsets.all(0),
                              barRadius: Radius.circular(20),
                              backgroundColor: Color(0xFFEDF0FF),
                              progressColor: Color(0xff6ecacd),
                            ),
                            Text(
                              '12:48',
                              style: Styles.Timer,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
