import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:sqillup_student/globe_functions/globe_functions.dart';

import '../styles/style.dart';

class SelectStudent extends StatefulWidget {
  const SelectStudent({Key? key}) : super(key: key);

  @override
  State<SelectStudent> createState() => _SelectStudentState();
}

class _SelectStudentState extends State<SelectStudent> {
  var selectedExamBoard;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      decoration: BoxDecoration(
          border: Border.all(color: Styles.sBlue, width: 2),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AvatarView(
            borderWidth: 2,
            radius: 20,
            borderColor: Colors.white,
            avatarType: AvatarType.CIRCLE,
            backgroundColor: Styles.sBgGray.withOpacity(0.7),
            imagePath: 'assets/child.jpg',
            placeHolder: const CircularProgressIndicator(
              strokeWidth: 10,
              color: Styles.sBlue,
            ),
            errorWidget: Container(
              child: const Icon(
                Icons.error,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: deviceWidth(context) - 130,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Colors.white,
              // color: Styles.sTextDarkBlue,
            ),
            // padding: EdgeInsets.symmetric(horizontal: 20),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                focusColor: Colors.black,
                value: selectedExamBoard,
                dropdownColor: Colors.white,
                // dropdownColor: Styles.sTextDarkBlue,
                //elevation: 5,
                style: const TextStyle(color: Colors.black),
                iconEnabledColor: Colors.black,
                icon: const Icon(Icons.keyboard_arrow_down_rounded),
                items: <String>[
                  'Karina Michael',
                  'Lucifer morning star',
                  'John pene',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),

                hint: const Text("Select student",
                    style: TextStyle(color: Colors.black, fontSize: 14)),

                onChanged: (value) {
                  setState(() {
                    selectedExamBoard = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
