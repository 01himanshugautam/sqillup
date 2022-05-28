
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:intl/intl.dart';
import '../styles/style.dart';

class DatePickerWidget extends StatefulWidget {
  DateTime? chosenDateTime;
  bool dateOnly;
  Function updateDate;
  String labelName;
  String dateHint;
  bool needFuture;

  DatePickerWidget(
      {Key? key,
        required this.needFuture,
        required this.dateOnly,
        required this.dateHint,
        required this.chosenDateTime,
        required this.updateDate,
        required this.labelName})
      : super(key: key);

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  bool dateSelected = false;


  void callDatePicker() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // date picker
                SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: widget.chosenDateTime,
                      minimumYear: widget.needFuture?  DateTime.now().year : DateTime.now().year - 100,
                      maximumYear: widget.needFuture
                          ? DateTime.now().year + 100
                          : DateTime.now().year,
                      onDateTimeChanged: (val) {
                        widget.updateDate(val);
                        setState(() {
                          widget.chosenDateTime = val;
                        });
                      }),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    if (widget.dateOnly == false) {
                      setState(() {
                        dateSelected = true;
                        callTimePicker();
                      });
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    color: Styles.sBlue,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50),
                      child: Center(
                        child: Text(
                          'Ok'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // )
              ],
            ),
          );
        });
  }
  void callTimePicker() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // date picker
                SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.time,
                    onDateTimeChanged: (value) {
                      // print(value);
                      widget.updateDate(value);
                      // setState(() {
                      //   widget.chosenDateTime = value;
                      // });
                    },
                    initialDateTime: widget.chosenDateTime,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);

                  },
                  child: Container(
                    width: double.infinity,
                    color: Styles.sBlue,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50),
                      child: Center(
                        child: Text(
                          'Ok'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {

    print('im chooed time in time picker');
    print(widget.chosenDateTime);
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4)),
          border: Border(

            // bottom: BorderSide(width: 1.0, color: Styles.sBgGray),
            // top: BorderSide(width: 1.0, color: Styles.sBgGray),
          )),
      child: SizedBox(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: TextField(

              textInputAction: TextInputAction.next,
              onTap: () {
                print('open date pixker');
                callDatePicker();
              },
              readOnly: true,
              cursorColor: Styles.sBlue,
              decoration: InputDecoration(

                  suffixIcon: const Icon(Ionicons.calendar_outline, size: 21,),
                  border: InputBorder.none,
                  // labelText: widget.labelName,
                  // labelStyle: TextStyle(color: Colors.black),
                  hintText:
                  widget.chosenDateTime != null
                  // ? widget.dateHint: DateFormat('yyyy-MM-dd').format(widget.chosenDateTime.toString()),
                  // widget.chosenDateTime.toString(),
                      ? widget.dateOnly? DateFormat('dd-MM-yyyy').format(widget.chosenDateTime!): DateFormat('dd-MM-yyyy HH:mm').format(widget.chosenDateTime!)
                      : widget.dateHint,
                  hintStyle: widget.chosenDateTime == null
                      ? TextStyle(
                      color: Styles.sTextDarkBlue.withOpacity(0.5),
                      fontSize: 14)
                      : const TextStyle(color: Colors.black),

                  floatingLabelBehavior: FloatingLabelBehavior.always),
            )),
      ),
    );
  }

}
