import 'package:flutter/material.dart';
import 'package:sqillup_student/globe_functions/globe_functions.dart';
import 'package:sqillup_student/screens/chapter/chapter_detail.dart';
import 'package:sqillup_student/widgets/assignment_card.dart';

class ChapterAll extends StatefulWidget {
  final data;
  ChapterAll({Key? key, required this.data}) : super(key: key);

  @override
  State<ChapterAll> createState() => _ChapterAllState();
}

class _ChapterAllState extends State<ChapterAll> {


  @override
  Widget build(BuildContext context) {

    return SizedBox(
        height: deviceHeight(context) - 380,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.90,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          itemCount: widget.data.length,
          itemBuilder: (context,index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChapterDetail(
                      name: widget.data[index]['name'],
                      description: widget.data[index]['description'],
                      videoUrl: widget.data[index]['video_url'],
                    )),
                  );
                },
                child: AssignmentCard(
                  lessionName: widget.data[index]['name'],
                ));
          },
        ));
  }
}
