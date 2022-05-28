import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:table_calendar/table_calendar.dart';

import '../styles/style.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard({Key? key}) : super(key: key);

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  String dropdownvalue = 'Unassigned';
  var items = [
    'Unassigned',
    'Assigned',
  ];

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  FToast fToast = FToast();
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Styles.sTextBlue,
      ),
      child: SizedBox(
        width: 300,
        child: Row(
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 24,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Text("Assignment $dropdownvalue successfully",
                style: Styles.tosterText),
          ],
        ),
      ),
    );

    //
    // fToast.showToast(
    //   child: toast,
    //   gravity: ToastGravity.BOTTOM,
    //   toastDuration: Duration(seconds: 2),
    // );

    // Custom Toast Position
    fToast.showToast(
        child: toast,
        toastDuration: const Duration(seconds: 2),
        // gravity: ToastGravity.TOP
        // );
        positionedToastBuilder: (context, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(margin: const EdgeInsets.only(top: 30), child: child),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            dropdownvalue == "Assigned"
                ? Styles.sShadeOrange
                : Styles.sTextBrown,
            Colors.white
          ],
        ),
      ),
      child: Stack(children: [
        Positioned(
            right: 11,
            top: 11,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SafeArea(
                          child: Container(
                        height: 200,
                        padding:
                            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(33),
                              child: Text(
                                'Are you sure want to Delete\nThe completed assignment details?',
                                style: Styles.txtSemiBoldDark,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: Styles.roundedElevatedBtn,
                                  child: const Text('Confrim')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: Styles.txtDark,
                                  )),
                            ],
                          ),
                        ]),
                      ));
                    });
              },
              child: const Icon(
                // viewMore
                //     ? Icons.keyboard_arrow_up
                //     :
                // Icons.more_vert,
                Icons.delete_rounded,
                size: 18.0,
                color: Colors.white,
              ),
            )),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'MCQs Questions (20)',
                        style: Styles.cardSubHeadingSml,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      '1.1 Body structure and function',
                      style: Styles.txtSemiBoldDark,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(right: 0, left: 25),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        // Initial Value
                        value: dropdownvalue,
                        focusColor: Colors.white,
                        dropdownColor: Styles.sTextDarkBlue,
                        //elevation: 5,
                        style: Styles.darkCardTextThin,
                        iconEnabledColor: Colors.white,
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 14,
                        ),
                        // Down Arrow Icon

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                          _showToast();
                        },
                      ),
                    ),
                    Row(
                      children: [
                        dropdownvalue == "Assigned"
                            ? Text(
                                '20th Mar 2022',
                                textAlign: TextAlign.center,
                                style: Styles.darkCardTextThin,
                              )
                            : const Text(''),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return SafeArea(
                                      child: Container(
                                          child: TableCalendar(
                                        firstDay: DateTime.utc(2010, 10, 16),
                                        lastDay: DateTime.utc(2030, 3, 14),
                                        focusedDay: _focusedDay,
                                        calendarFormat: _calendarFormat,
                                        selectedDayPredicate: (day) {
                                          // Use `selectedDayPredicate` to determine which day is currently selected.
                                          // If this returns true, then `day` will be marked as selected.

                                          // Using `isSameDay` is recommended to disregard
                                          // the time-part of compared DateTime objects.
                                          return isSameDay(_selectedDay, day);
                                        },
                                        onDaySelected:
                                            (selectedDay, focusedDay) {
                                          if (!isSameDay(
                                              _selectedDay, selectedDay)) {
                                            // Call `setState()` when updating the selected day
                                            setState(() {
                                              _selectedDay = selectedDay;
                                              _focusedDay = focusedDay;
                                            });
                                          }
                                        },
                                        onFormatChanged: (format) {
                                          if (_calendarFormat != format) {
                                            // Call `setState()` when updating calendar format
                                            setState(() {
                                              _calendarFormat = format;
                                            });
                                          }
                                        },
                                        onPageChanged: (focusedDay) {
                                          // No need to call `setState()` here
                                          _focusedDay = focusedDay;
                                        },
                                      )),
                                    );
                                  });
                              // Navigator.push(
                              //     context,
                              //     PageTransition(
                              //         child: CalenderPicker(),
                              //         type: PageTransitionType.fade));
                            },
                            icon: const Icon(
                              Icons.calendar_month_sharp,
                              color: Colors.white,
                              size: 14,
                            )),
                      ],
                    )
                  ]),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                color: dropdownvalue == "Assigned"
                    ? Styles.sShadeOrange
                    : Styles.sTextDarkBlue,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
