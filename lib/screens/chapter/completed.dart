import 'package:flutter/material.dart';
import 'package:sqillup_student/styles/style.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

class ChapterCompleted extends StatefulWidget {
  ChapterCompleted({Key? key}) : super(key: key);

  @override
  State<ChapterCompleted> createState() => _ChapterCompletedState();
}

class _ChapterCompletedState extends State<ChapterCompleted> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.green,
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
                child: const Icon(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Lesson 1.2',
                          style: Styles.subHeadingMediumWhite,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Introduction to Atom',
                          style: Styles.subHeadingMediumWhite,
                        ),
                        Container(
                          transform: Matrix4.translationValues(0, 10, 0),
                          child: Text(
                            '14:48',
                            style: Styles.TimerWhite,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBoxH20(),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.green,
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
                child: const Icon(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Lesson 1.4',
                          style: Styles.subHeadingMediumWhite,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Introduction to Atom',
                          style: Styles.subHeadingMediumWhite,
                        ),
                        Container(
                          transform: Matrix4.translationValues(0, 10, 0),
                          child: Text(
                            '14:48',
                            style: Styles.TimerWhite,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBoxH20(),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.green,
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
                child: const Icon(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Lesson 1.8',
                          style: Styles.subHeadingMediumWhite,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Introduction to Atom',
                          style: Styles.subHeadingMediumWhite,
                        ),
                        Container(
                          transform: Matrix4.translationValues(0, 10, 0),
                          child: Text(
                            '14:48',
                            style: Styles.TimerWhite,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBoxH20(),
      ],
    );
  }
}
