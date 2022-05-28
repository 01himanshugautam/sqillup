import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../globe_functions/globe_functions.dart';
import '../styles/style.dart';

class CountryCodeInput extends StatefulWidget {
  TextEditingController mobileController;

  CountryCodeInput({Key? key, required this.mobileController})
      : super(key: key);

  @override
  State<CountryCodeInput> createState() => _CountryCodeInputState();
}

class _CountryCodeInputState extends State<CountryCodeInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color:  Styles.sBgBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: CountryCodePicker(
              // onChanged: print,
              onChanged: (val) {
                setState(() {
                  widget.mobileController.text = val.toString();
                });
                print(val);
              },
              flagWidth: 25,
              padding: const EdgeInsets.only(left:10, right: 0),
              showDropDownButton: true,
              dialogSize:
                  Size(deviceWidth(context) - 80, deviceHeight(context) - 200),
              initialSelection: 'GB',
              hideMainText: true,
              favorite: const ['GB', 'LK'],
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
              alignLeft: false,
            ),
          ),
          Container(
            transform: Matrix4.translationValues(-10.0, 0.0, 0.0),
            child: SizedBox(
              width: deviceWidth(context) - 190,
              child: TextField(
                controller: widget.mobileController,
                // obscureText: obsureText,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Styles.sBgBlue,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(color: Styles.sBgBlue)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      // color: Styles.sTextDarkBlue,
                      color: Styles.sBgBlue,
                    ),
                  ),
                  hintText: 'Eg: +44 1234 56789',
                  hintStyle:
                      TextStyle(color: Styles.sTextDarkBlue, fontSize: 14),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Styles.sBgBlue)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//
// Widget countryCodeInput() {
//   return CountryCodePicker(
//         onChanged: print,
//         // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
//         initialSelection: 'IT',
//         favorite: ['+39','FR'],
//         // optional. Shows only country name and flag
//         showCountryOnly: false,
//         // optional. Shows only country name and flag when popup is closed.
//         showOnlyCountryWhenClosed: false,
//         // optional. aligns the flag and the Text left
//         alignLeft: false,
//       );
// }
