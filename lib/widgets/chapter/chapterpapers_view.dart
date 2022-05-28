import 'package:flutter/material.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

class ChapterPapersView extends StatelessWidget {
  const ChapterPapersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: Image.asset(
              'assets/images/chapter_img.png',
              scale: 0.9,
              // width: 250,
              // height: 250,
            ),
          ),
          SizedBoxH10(),
          Text(
            'Visit web application to start the chapter paper test.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: 'poppins-regular',
            ),
          )
        ],
      ),
    );
  }
}
