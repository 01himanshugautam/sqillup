import 'package:flutter/material.dart';
import 'package:sqillup_student/styles/style.dart';
import 'package:sqillup_student/widgets/chapter/chapterpapers_view.dart';
import 'package:sqillup_student/widgets/chapter/overview_view.dart';
import 'package:sqillup_student/widgets/chapter/sefttest_view.dart';
import 'package:sqillup_student/widgets/chapter/video_player.dart';
import 'package:video_player/video_player.dart';

class ChapterDetail extends StatefulWidget {
  final String? name;
  final String? videoUrl;
  final String? description;
  ChapterDetail({Key? key, this.description, this.name, this.videoUrl})
      : super(key: key);

  @override
  _ChapterDetailState createState() => _ChapterDetailState();
}

class _ChapterDetailState extends State<ChapterDetail> {
  late double widthScale, heightScale;

  bool overview = true;
  bool selftest = false;
  bool paper = false;
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    widthScale = MediaQuery.of(context).size.width / 375;
    heightScale = MediaQuery.of(context).size.height / 812;
    return Scaffold(
      backgroundColor: Styles.sBgBlue,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        // ignore: prefer_const_constructors
        title: Center(
          child: Text(
            "Chapter 1",
            style: const TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Styles.sBgBlue,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Padding(
          //   padding: EdgeInsets.only(left: 12 * widthScale, right: 12 * widthScale, top: 60 * heightScale),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       GestureDetector(
          //           onTap: (){},
          //           child: Icon(Icons.arrow_back,size: 24*widthScale,),
          //       ),
          //       Text('Chapter 1',style: TextStyle(fontSize: 16*widthScale,fontWeight: FontWeight.w600)),
          //       GestureDetector(
          //         onTap: (){},
          //         child: Icon(Icons.notifications,size: 24*widthScale,),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            width: double.infinity,
            height: 350 * heightScale,
            margin: EdgeInsets.only(
                left: 16 * widthScale,
                right: 16 * widthScale,
                top: 20 * heightScale),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 16 * widthScale,
                      right: 16 * widthScale,
                      top: 10 * heightScale,
                      bottom: 10 * heightScale),
                  child: Text(widget.name ?? '1.1 Elements and compounds',
                      style: TextStyle(fontSize: 16 * widthScale)),
                ),
                SizedBox(
                  height: 260 * widthScale,
                  child: MyVideoPlayer(
                    videoPlayerController: VideoPlayerController.network(
                      widget.videoUrl ?? 'videos/IntroVideo.mp4',
                    ),
                    looping: false,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50 * heightScale,
            margin: EdgeInsets.only(
                left: 16 * widthScale,
                right: 16 * widthScale,
                top: 20 * heightScale),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                overview == true
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 100 * widthScale,
                            child: Center(
                              child: Text(
                                "Overview",
                                style: TextStyle(
                                  fontSize: 13 * widthScale,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black54,
                            width: 56 * widthScale,
                            height: 2 * widthScale,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 100 * widthScale,
                            child: GestureDetector(
                              onTap: () {
                                onAddButtonTapped(0);
                              },
                              child: Center(
                                child: Text(
                                  "Overview",
                                  style: TextStyle(
                                      fontSize: 13 * widthScale,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(0.25)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            width: 48 * widthScale,
                            height: 2 * widthScale,
                          )
                        ],
                      ),
                //SizedBox(width: 50*widthScale,),
                selftest == false
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 100 * widthScale,
                            child: GestureDetector(
                              onTap: () {
                                onAddButtonTapped(1);
                              },
                              child: Center(
                                child: Text(
                                  "Selftest",
                                  style: TextStyle(
                                      fontSize: 13 * widthScale,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(0.25)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            width: 48 * widthScale,
                            height: 2 * widthScale,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 100 * widthScale,
                            child: Center(
                              child: Text(
                                "Selftest",
                                style: TextStyle(
                                  fontSize: 13 * widthScale,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black54,
                            width: 48 * widthScale,
                            height: 2 * widthScale,
                          )
                        ],
                      ),
                paper == false
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 120 * widthScale,
                            child: GestureDetector(
                              onTap: () {
                                onAddButtonTapped(2);
                              },
                              child: Center(
                                child: Text(
                                  "Chapter Papers",
                                  style: TextStyle(
                                      fontSize: 13 * widthScale,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(0.25)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            width: 48 * widthScale,
                            height: 2 * widthScale,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 105 * widthScale,
                            child: Center(
                              child: Text(
                                "Chapter Papers",
                                style: TextStyle(
                                  fontSize: 13 * widthScale,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black54,
                            width: 92 * widthScale,
                            height: 2 * widthScale,
                          )
                        ],
                      ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
                onPageChanged: onPageViewChange,
                controller: controller,
                allowImplicitScrolling: false,
                scrollDirection: Axis.horizontal,
                children: [
                  OverviewView(
                    description: widget.description,
                  ),
                  SelftestView(),
                  ChapterPapersView(),
                ]),
          )
        ],
      ),
    );
  }

  onPageViewChange(int page) {
    if (page == 0) {
      setState(() {
        overview = true;
        selftest = false;
        paper = false;
      });
    } else if (page == 1) {
      setState(() {
        selftest = true;
        overview = false;
        paper = false;
      });
    } else {
      setState(() {
        selftest = false;
        overview = false;
        paper = true;
      });
    }
  }

  void onAddButtonTapped(int index) {
    controller.jumpToPage(index);
  }
}
