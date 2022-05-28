import 'package:flutter/material.dart';
import 'package:sqillup_student/styles/style.dart';

import '../globe_functions/globe_functions.dart';

class MakeInput extends StatefulWidget {
  String label;
  double lableOpacity;
  bool required;
  bool isShadow;
  TextEditingController inputController;
  Color bgColor;
  bool isPreIcon;
  bool isSurIcon;

  MakeInput(
      {Key? key,
      required this.isPreIcon,
      required this.isSurIcon,
      required this.label,
      required this.isShadow,
      required this.bgColor,
      required this.lableOpacity,
      required this.required,
      required this.inputController})
      : super(key: key);

  @override
  State<MakeInput> createState() => _MakeInputState();
}

class _MakeInputState extends State<MakeInput> {
  bool validMail = false;
  bool validPassword = false;
  bool obsureText = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.isPreIcon && widget.isSurIcon
            ? Container(
                decoration: widget.isShadow
                    ? BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Styles.sBgGray.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: const Offset(
                                0, 14), // changes position of shadow
                          ),
                        ],
                      )
                    : const BoxDecoration(),
                child: TextField(
                  style: const TextStyle(fontSize: 14),
                  onChanged: (val) {
                    if (widget.label == 'Email address') {
                      print(validMail);
                      setState(() {
                        validMail = isEmail(val);
                      });
                    }
                    if (widget.label == 'Password') {
                      print(validPassword);
                      setState(() {
                        validMail = isPassword(val);
                      });
                    }
                  },
                  controller: widget.inputController,
                  obscureText: obsureText,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: widget.bgColor,
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.transparent)),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    prefixIcon: Builder(builder: (builder) {
                      if (widget.label == 'Attach icon') {
                        return Container(
                            padding: const EdgeInsets.all(15),
                            width: 10,
                            height: 10,
                            child: Image.asset(
                              'assets/gr2.png',
                              width: 10,
                              height: 10,
                            ));
                      } else if (widget.label == 'Enter reward title name') {
                        return Container(
                            padding: const EdgeInsets.all(12),
                            width: 10,
                            height: 10,
                            child: Image.asset(
                              'assets/gr1.png',
                              width: 10,
                              height: 10,
                            ));
                      } else {
                        return const Text('');
                      }
                    }),
                    suffixIcon: Builder(builder: (builder) {
                      if (widget.label == 'Email address' &&
                          widget.inputController.text.isNotEmpty) {
                        if (validMail) {
                          return const Icon(
                            Icons.check,
                            color: Styles.sBorderBlue,
                            size: 18,
                          );
                        } else {
                          return const Icon(Icons.close,
                              color: Styles.sOrange2, size: 18);
                        }
                      } else if (widget.label == 'Password' &&
                          widget.inputController.text.isNotEmpty) {
                        if (validPassword) {
                          return const Icon(
                            Icons.check,
                            color: Styles.sBorderBlue,
                            size: 18,
                          );
                        } else {
                          return const Icon(Icons.close,
                              color: Styles.sOrange2, size: 18);
                        }
                      } else if (widget.label == 'Enter Reward Points') {
                        return const Icon(
                          Icons.help_outline_rounded,
                          color: Styles.sBlue,
                          size: 18,
                        );
                      } else if (widget.label == 'Attach icon') {
                        return const Icon(
                          Icons.attach_file_rounded,
                          color: Styles.sBlue,
                          size: 18,
                        );
                      } else {
                        return const Text('');
                      }
                    }),

                    hintText: widget.label,
                    hintStyle: TextStyle(
                        color: Styles.sTextDarkBlue
                            .withOpacity(widget.lableOpacity),
                        fontSize: 12),
                    // border: const OutlineInputBorder(
                    //     borderSide: const BorderSide(color: Styles.sBgBlue)
                    // ),
                  ),
                ),
              )
            : widget.isPreIcon == false && widget.isSurIcon == false
                ? Container(
                    decoration: widget.isShadow
                        ? BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Styles.sBgGray.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: const Offset(
                                    0, 14), // changes position of shadow
                              ),
                            ],
                          )
                        : const BoxDecoration(),
                    child: TextField(
                      style: const TextStyle(fontSize: 14),
                      onChanged: (val) {
                        if (widget.label == 'Email address') {
                          print(validMail);
                          setState(() {
                            validMail = isEmail(val);
                          });
                        }
                        if (widget.label == 'Password') {
                          print(validPassword);
                          setState(() {
                            validMail = isPassword(val);
                          });
                        }
                      },
                      controller: widget.inputController,
                      obscureText: obsureText,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: widget.bgColor,
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Colors.transparent)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),

                        hintText: widget.label,
                        hintStyle: TextStyle(
                            color: Styles.sTextDarkBlue
                                .withOpacity(widget.lableOpacity),
                            fontSize: 12),
                        // border: const OutlineInputBorder(
                        //     borderSide: const BorderSide(color: Styles.sBgBlue)
                        // ),
                      ),
                    ),
                  )
                : widget.isSurIcon
                    ? Container(
                        decoration: widget.isShadow
                            ? BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Styles.sBgGray.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 8,
                                    offset: const Offset(
                                        0, 14), // changes position of shadow
                                  ),
                                ],
                              )
                            : const BoxDecoration(),
                        child: TextField(
                          style: const TextStyle(fontSize: 14),
                          onChanged: (val) {
                            if (widget.label == 'Email address') {
                              print(validMail);
                              setState(() {
                                validMail = isEmail(val);
                              });
                            }
                            if (widget.label == 'Password') {
                              print(validPassword);
                              setState(() {
                                validMail = isPassword(val);
                              });
                            }
                          },
                          controller: widget.inputController,
                          obscureText: obsureText,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: widget.bgColor,
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),

                            suffixIcon: Builder(builder: (builder) {
                              if (widget.label == 'Email address' &&
                                  widget.inputController.text.isNotEmpty) {
                                if (validMail) {
                                  return const Icon(
                                    Icons.check,
                                    color: Styles.sBorderBlue,
                                    size: 18,
                                  );
                                } else {
                                  return const Icon(Icons.close,
                                      color: Styles.sOrange2, size: 18);
                                }
                              } else if (widget.label == 'Password' &&
                                  widget.inputController.text.isNotEmpty) {
                                if (validPassword) {
                                  return const Icon(
                                    Icons.check,
                                    color: Styles.sBorderBlue,
                                    size: 18,
                                  );
                                } else {
                                  return const Icon(Icons.close,
                                      color: Styles.sOrange2, size: 18);
                                }
                              } else if (widget.label ==
                                  'Enter Reward Points') {
                                return const Icon(
                                  Icons.help_outline_rounded,
                                  color: Styles.sBlue,
                                  size: 18,
                                );
                              } else if (widget.label == 'Attach icon') {
                                return const Icon(
                                  Icons.attach_file_rounded,
                                  color: Styles.sBlue,
                                  size: 18,
                                );
                              } else {
                                return const Text('');
                              }
                            }),

                            hintText: widget.label,
                            hintStyle: TextStyle(
                                color: Styles.sTextDarkBlue
                                    .withOpacity(widget.lableOpacity),
                                fontSize: 12),
                            // border: const OutlineInputBorder(
                            //     borderSide: const BorderSide(color: Styles.sBgBlue)
                            // ),
                          ),
                        ),
                      )
                    : Container(
                        decoration: widget.isShadow
                            ? BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Styles.sBgGray.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 8,
                                    offset: const Offset(
                                        0, 14), // changes position of shadow
                                  ),
                                ],
                              )
                            : const BoxDecoration(),
                        child: TextField(
                          style: const TextStyle(fontSize: 14),
                          onChanged: (val) {
                            if (widget.label == 'Email address') {
                              print(validMail);
                              setState(() {
                                validMail = isEmail(val);
                              });
                            }
                            if (widget.label == 'Password') {
                              print(validPassword);
                              setState(() {
                                validMail = isPassword(val);
                              });
                            }
                          },
                          controller: widget.inputController,
                          obscureText: obsureText,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: widget.bgColor,
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            prefixIcon: Builder(builder: (builder) {
                              if (widget.label == 'Attach icon') {
                                return Container(
                                    padding: const EdgeInsets.all(15),
                                    width: 10,
                                    height: 10,
                                    child: Image.asset(
                                      'assets/gr2.png',
                                      width: 10,
                                      height: 10,
                                    ));
                              } else if (widget.label ==
                                  'Enter reward title name') {
                                return Container(
                                    padding: const EdgeInsets.all(12),
                                    width: 10,
                                    height: 10,
                                    child: Image.asset(
                                      'assets/gr1.png',
                                      width: 10,
                                      height: 10,
                                    ));
                              } else {
                                return const Text('');
                              }
                            }),

                            hintText: widget.label,
                            hintStyle: TextStyle(
                                color: Styles.sTextDarkBlue
                                    .withOpacity(widget.lableOpacity),
                                fontSize: 12),
                            // border: const OutlineInputBorder(
                            //     borderSide: const BorderSide(color: Styles.sBgBlue)
                            // ),
                          ),
                        ),
                      ),
        const SizedBox(
          height: 14,
        )
      ],
    );
  }
}
//
// bool validMail = false;
// Widget makeInput(
//     {label,
//     lableOpacity,
//     hintText,
//     obsureText = false,
//     required,
//     inputController}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       TextField(
//         onChanged: (val) {
//           if (label == 'Email address') {
//             print(validMail);
//             validMail = isEmail(val);
//           }
//         },
//         controller: inputController,
//         obscureText: obsureText,
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: Styles.sBgBlue,
//           focusedBorder: const OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(4.0)),
//               borderSide: BorderSide(color: Styles.sBgBlue)),
//           contentPadding:
//               const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//           enabledBorder: const OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Styles.sBgBlue,
//             ),
//           ),
//           suffixIcon: label == 'Email address'
//               ? validMail
//                   ? Icon(Icons.check)
//                   : Icon(Icons.close)
//               : null,
//           hintText: label,
//           hintStyle: TextStyle(
//               color: Styles.sTextDarkBlue.withOpacity(lableOpacity),
//               fontSize: 14),
//           border: const OutlineInputBorder(
//               borderSide: const BorderSide(color: Styles.sBgBlue)),
//         ),
//       ),
//       const SizedBox(
//         height: 14,
//       )
//     ],
//   );
// }
