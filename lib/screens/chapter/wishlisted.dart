import 'package:flutter/material.dart';
import 'package:sqillup_student/styles/style.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

class ChapterWishlisted extends StatefulWidget {
  ChapterWishlisted({Key? key}) : super(key: key);

  @override
  State<ChapterWishlisted> createState() => _ChapterWishlistedState();
}

class _ChapterWishlistedState extends State<ChapterWishlisted> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // Get.to(() => ChapterDetail());
          },
          child: Container(
            padding: const EdgeInsets.all(15),
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
                        children: [
                          const Text(
                            'Lesson 1.2',
                            style: Styles.subHeadingMedium,
                          ),
                          Container(
                            transform: Matrix4.translationValues(0, -8, 0),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Introduction to Atom',
                            style: Styles.subHeadingMedium,
                          ),
                          Container(
                            transform: Matrix4.translationValues(0, 10, 0),
                            child: Text(
                              '14:48',
                              style: Styles.Timer,
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
        ),
        const SizedBoxH20(),
        InkWell(
          onTap: () {
            // Get.to(() => ChapterDetail());
          },
          child: Container(
            padding: const EdgeInsets.all(15),
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
                        children: [
                          const Text(
                            'Lesson 1.4',
                            style: Styles.subHeadingMedium,
                          ),
                          Container(
                            transform: Matrix4.translationValues(0, -8, 0),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Introduction to Atom',
                            style: Styles.subHeadingMedium,
                          ),
                          Container(
                            transform: Matrix4.translationValues(0, 10, 0),
                            child: Text(
                              '14:48',
                              style: Styles.Timer,
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
        ),
        const SizedBoxH20(),
        InkWell(
          onTap: () {
            // Get.to(() => ChapterDetail());
          },
          child: Container(
            padding: const EdgeInsets.all(15),
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
                        children: [
                          const Text(
                            'Lesson 1.8',
                            style: Styles.subHeadingMedium,
                          ),
                          Container(
                            transform: Matrix4.translationValues(0, -8, 0),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Introduction to Atom',
                            style: Styles.subHeadingMedium,
                          ),
                          Container(
                            transform: Matrix4.translationValues(0, 10, 0),
                            child: Text(
                              '14:48',
                              style: Styles.Timer,
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
        ),
        const SizedBoxH20(),
      ],
    );
  }
}
