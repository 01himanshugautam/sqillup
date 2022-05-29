import 'package:flutter/material.dart';
import 'package:sqillup_student/screens/chapter/chapter.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

import '../../styles/style.dart';

class CourseCard extends StatefulWidget {
  final data;
  CourseCard({Key? key, this.data}) : super(key: key);

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return widget.data != null
        ? ListView.builder(
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 0,
                  color: Styles.sButter,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.33,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 25.0, left: 15, right: 0.0),
                          child: Image.network(
                            widget.data[index]['subject']['logo'],
                            fit: BoxFit.fill,
                            height: 180,
                            width: 60,
                          ),
                        ),
                      ),
                      const SizedBoxW15(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBoxH30(),
                          Text(
                            widget.data[index]['name'],
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Styles.cBrown,
                              fontFamily: 'poppins-medium',
                            ),
                          ),
                          const SizedBoxH20(),
                          Row(
                            children: const [
                              Icon(Icons.access_time_filled,
                                  color: Styles.cBrown, size: 18),
                              Text(' 2 Hours',
                                  style: TextStyle(
                                      color: Styles.cBrown,
                                      fontSize: 14,
                                      fontFamily: 'poppins-regular')),
                            ],
                          ),
                          const SizedBoxH20(),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.play_circle_outline,
                                    color: Colors.black, size: 18),
                              ),
                              const SizedBox(width: 7),
                              const Text(
                                ' 08',
                                style: TextStyle(
                                    color: Styles.cBrown,
                                    fontFamily: 'poppins-regular'),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                alignment: Alignment.center,
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.menu_book_outlined,
                                    color: Colors.black, size: 18),
                              ),
                              const SizedBox(width: 7),
                              const Text(
                                ' 08',
                                style: TextStyle(
                                    color: Styles.cBrown,
                                    fontFamily: 'poppins-regular'),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                alignment: Alignment.center,
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.menu_book_outlined,
                                    color: Colors.yellow, size: 18),
                              ),
                              const SizedBox(width: 7),
                              const Text(
                                ' 02',
                                style: TextStyle(
                                    color: Styles.cBrown,
                                    fontFamily: 'poppins-regular'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 100.0,
                            ),
                            child: InkWell(
                              child: Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: const Text(
                                  'CONTINUE',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Styles.cBrown,
                                    fontFamily: 'poppins-bold',
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Chapter()),
                                );
                                // const Chapter();
                                // Get.to(() => ChaptersScreen());
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              );
            })
        : Center(child: CircularProgressIndicator());

    //   return Column(
    //     children: [
    //       GestureDetector(
    //         child: Card(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(8.0),
    //           ),
    //           elevation: 0,
    //           color: Styles.sButter,
    //           child: Row(
    //             children: [
    //               SizedBox(
    //                 width: MediaQuery.of(context).size.width * 0.33,
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(
    //                       top: 15.0, bottom: 25.0, left: 15, right: 0.0),
    //                   child: Image.asset(
    //                     "assets/images/chemistry.png",
    //                     fit: BoxFit.fill,
    //                     // width: 200,
    //                     // height: 155,
    //                   ),
    //                 ),
    //               ),
    //               const SizedBoxW15(),
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   const SizedBoxH30(),
    //                   const Text(
    //                     "1. THE PARTICLE MODEL",
    //                     style: TextStyle(
    //                       fontSize: 14.0,
    //                       fontWeight: FontWeight.bold,
    //                       color: Styles.cBrown,
    //                       fontFamily: 'poppins-medium',
    //                     ),
    //                   ),
    //                   const SizedBoxH20(),
    //                   Row(
    //                     children: const [
    //                       Icon(Icons.access_time_filled,
    //                           color: Styles.cBrown, size: 18),
    //                       Text(' 2 Hours',
    //                           style: TextStyle(
    //                               color: Styles.cBrown,
    //                               fontSize: 14,
    //                               fontFamily: 'poppins-regular')),
    //                     ],
    //                   ),
    //                   const SizedBoxH20(),
    //                   Row(
    //                     children: [
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 24,
    //                         width: 24,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(5),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Icon(Icons.play_circle_outline,
    //                             color: Colors.black, size: 18),
    //                       ),
    //                       const SizedBox(width: 7),
    //                       const Text(
    //                         ' 08',
    //                         style: TextStyle(
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-regular'),
    //                       ),
    //                       const SizedBox(width: 15),
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 24,
    //                         width: 24,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(5),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Icon(Icons.menu_book_outlined,
    //                             color: Colors.black, size: 18),
    //                       ),
    //                       const SizedBox(width: 7),
    //                       const Text(
    //                         ' 08',
    //                         style: TextStyle(
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-regular'),
    //                       ),
    //                       const SizedBox(width: 15),
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 24,
    //                         width: 24,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(5),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Icon(Icons.menu_book_outlined,
    //                             color: Colors.yellow, size: 18),
    //                       ),
    //                       const SizedBox(width: 7),
    //                       const Text(
    //                         ' 02',
    //                         style: TextStyle(
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-regular'),
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     height: 15,
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(
    //                       left: 100.0,
    //                     ),
    //                     child: InkWell(
    //                       child: Container(
    //                         alignment: Alignment.center,
    //                         height: 35,
    //                         width: 120,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Text(
    //                           'CONTINUE',
    //                           style: TextStyle(
    //                             fontSize: 11,
    //                             fontWeight: FontWeight.bold,
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-bold',
    //                           ),
    //                         ),
    //                       ),
    //                       onTap: () {
    //                         Navigator.push(
    //                           context,
    //                           MaterialPageRoute(
    //                               builder: (context) => const Chapter()),
    //                         );
    //                         // const Chapter();
    //                         // Get.to(() => ChaptersScreen());
    //                       },
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         onTap: () {},
    //       ),
    //       const SizedBox(
    //         height: 20,
    //       ),
    //       GestureDetector(
    //         child: Card(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(8.0),
    //           ),
    //           elevation: 0,
    //           color: Styles.sButter,
    //           child: Row(
    //             children: [
    //               SizedBox(
    //                 width: MediaQuery.of(context).size.width * 0.33,
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(
    //                       top: 15.0, bottom: 25.0, left: 15, right: 0.0),
    //                   child: Image.asset(
    //                     "assets/images/chemistry_2.png",
    //                     fit: BoxFit.fill,
    //                     // width: 200,
    //                     // height: 155,
    //                   ),
    //                 ),
    //               ),
    //               const SizedBoxW15(),
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   const SizedBoxH30(),
    //                   const Text(
    //                     "1. THE PARTICLE MODEL",
    //                     style: TextStyle(
    //                       fontSize: 14.0,
    //                       fontWeight: FontWeight.bold,
    //                       color: Styles.cBrown,
    //                       fontFamily: 'poppins-medium',
    //                     ),
    //                   ),
    //                   const SizedBoxH20(),
    //                   Row(
    //                     children: const [
    //                       Icon(Icons.access_time_filled,
    //                           color: Styles.cBrown, size: 18),
    //                       Text(' 2 Hours',
    //                           style: TextStyle(
    //                               color: Styles.cBrown,
    //                               fontSize: 14,
    //                               fontFamily: 'poppins-regular')),
    //                     ],
    //                   ),
    //                   const SizedBoxH20(),
    //                   Row(
    //                     children: [
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 24,
    //                         width: 24,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(5),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Icon(Icons.play_circle_outline,
    //                             color: Colors.black, size: 18),
    //                       ),
    //                       const SizedBox(width: 7),
    //                       const Text(
    //                         ' 08',
    //                         style: TextStyle(
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-regular'),
    //                       ),
    //                       const SizedBox(width: 15),
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 24,
    //                         width: 24,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(5),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Icon(Icons.menu_book_outlined,
    //                             color: Colors.black, size: 18),
    //                       ),
    //                       const SizedBox(width: 7),
    //                       const Text(
    //                         ' 08',
    //                         style: TextStyle(
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-regular'),
    //                       ),
    //                       const SizedBox(width: 15),
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 24,
    //                         width: 24,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(5),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Icon(Icons.menu_book_outlined,
    //                             color: Colors.yellow, size: 18),
    //                       ),
    //                       const SizedBox(width: 7),
    //                       const Text(
    //                         ' 02',
    //                         style: TextStyle(
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-regular'),
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     height: 15,
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(
    //                       left: 100.0,
    //                     ),
    //                     child: InkWell(
    //                       child: Container(
    //                         alignment: Alignment.center,
    //                         height: 35,
    //                         width: 120,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Text(
    //                           'CONTINUE',
    //                           style: TextStyle(
    //                             fontSize: 11,
    //                             fontWeight: FontWeight.bold,
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-bold',
    //                           ),
    //                         ),
    //                       ),
    //                       onTap: () {
    //                         Navigator.push(
    //                           context,
    //                           MaterialPageRoute(
    //                               builder: (context) => const Chapter()),
    //                         );
    //                         // const Chapter();
    //                         // Get.to(() => ChaptersScreen());
    //                       },
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         onTap: () {},
    //       ),
    //       const SizedBox(
    //         height: 20,
    //       ),
    //       GestureDetector(
    //         child: Card(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(8.0),
    //           ),
    //           elevation: 0,
    //           color: Styles.sButter,
    //           child: Row(
    //             children: [
    //               SizedBox(
    //                 width: MediaQuery.of(context).size.width * 0.33,
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(
    //                       top: 15.0, bottom: 25.0, left: 15, right: 0.0),
    //                   child: Image.asset(
    //                     "assets/images/chemistry_3.png",
    //                     fit: BoxFit.fill,
    //                     // width: 200,
    //                     // height: 155,
    //                   ),
    //                 ),
    //               ),
    //               const SizedBoxW15(),
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   const SizedBoxH30(),
    //                   const Text(
    //                     "1. THE PARTICLE MODEL",
    //                     style: TextStyle(
    //                       fontSize: 14.0,
    //                       fontWeight: FontWeight.bold,
    //                       color: Styles.cBrown,
    //                       fontFamily: 'poppins-medium',
    //                     ),
    //                   ),
    //                   const SizedBoxH20(),
    //                   Row(
    //                     children: const [
    //                       Icon(Icons.access_time_filled,
    //                           color: Styles.cBrown, size: 18),
    //                       Text(' 2 Hours',
    //                           style: TextStyle(
    //                               color: Styles.cBrown,
    //                               fontSize: 14,
    //                               fontFamily: 'poppins-regular')),
    //                     ],
    //                   ),
    //                   const SizedBoxH20(),
    //                   Row(
    //                     children: [
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 24,
    //                         width: 24,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(5),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Icon(Icons.play_circle_outline,
    //                             color: Colors.black, size: 18),
    //                       ),
    //                       const SizedBox(width: 7),
    //                       const Text(
    //                         ' 08',
    //                         style: TextStyle(
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-regular'),
    //                       ),
    //                       const SizedBox(width: 15),
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 24,
    //                         width: 24,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(5),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Icon(Icons.menu_book_outlined,
    //                             color: Colors.black, size: 18),
    //                       ),
    //                       const SizedBox(width: 7),
    //                       const Text(
    //                         ' 08',
    //                         style: TextStyle(
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-regular'),
    //                       ),
    //                       const SizedBox(width: 15),
    //                       Container(
    //                         alignment: Alignment.center,
    //                         height: 24,
    //                         width: 24,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(5),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Icon(Icons.menu_book_outlined,
    //                             color: Colors.yellow, size: 18),
    //                       ),
    //                       const SizedBox(width: 7),
    //                       const Text(
    //                         ' 02',
    //                         style: TextStyle(
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-regular'),
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     height: 15,
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(
    //                       left: 100.0,
    //                     ),
    //                     child: InkWell(
    //                       child: Container(
    //                         alignment: Alignment.center,
    //                         height: 35,
    //                         width: 120,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.white,
    //                         ),
    //                         child: const Text(
    //                           'CONTINUE',
    //                           style: TextStyle(
    //                             fontSize: 11,
    //                             fontWeight: FontWeight.bold,
    //                             color: Styles.cBrown,
    //                             fontFamily: 'poppins-bold',
    //                           ),
    //                         ),
    //                       ),
    //                       onTap: () {
    //                         Navigator.push(
    //                           context,
    //                           MaterialPageRoute(
    //                               builder: (context) => const Chapter()),
    //                         );
    //                         // const Chapter();
    //                         // Get.to(() => ChaptersScreen());
    //                       },
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         onTap: () {},
    //       ),
    //       const SizedBox(
    //         height: 20,
    //       ),
    //     ],
    //   );
  }
}
