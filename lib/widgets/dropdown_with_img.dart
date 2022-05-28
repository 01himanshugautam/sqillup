import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:sqillup_student/globe_functions/globe_functions.dart';

import '../styles/style.dart';

class DropDownWithImg extends StatefulWidget {
  String dropDownHint;
  List<Map> items;
  DropDownWithImg({Key? key, required this.dropDownHint, required this.items})
      : super(key: key);

  @override
  State<DropDownWithImg> createState() => _DropDownWithImgState();
}

class _DropDownWithImgState extends State<DropDownWithImg> {
  var _selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3, bottom: 3, left: 0, right: 10),
      height: 48,
      decoration: BoxDecoration(
          // border: Border.all(color: Styles.sBlue, width: 2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Styles.sBgGray.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 14), // changes position of shadow
            ),
          ],
          color: Colors.white),
      width: double.infinity,
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton<String>(
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Styles.sTextDarkBlue,
              size: 24,
            ),
            isDense: false,
            hint: Text(
              widget.dropDownHint,
              style: Styles.midHeadingSmall,
            ),
            value: _selected,
            onChanged: (newValue) {
              setState(() {
                _selected = newValue;
              });
              print(_selected);
            },
            items: widget.items.map((map) {
              return DropdownMenuItem<String>(
                value: map["id"].toString(),
                // value: _mySelection,
                child: SizedBox(
                  width: deviceWidth(context) - 100,
                  child: Row(
                    children: <Widget>[
                      map['image'] != null
                          ? Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: AvatarView(
                                borderWidth: 2,
                                radius: 8,
                                borderColor: Colors.white,
                                avatarType: AvatarType.CIRCLE,
                                backgroundColor:
                                    Styles.sBgGray.withOpacity(0.7),
                                imagePath: map['image'],
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
                            )
                          : const Text(''),
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text(
                            map["name"],
                            style: Styles.midHeadingSmall,
                          )),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
