import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';

deviceHeight(context) {
  return MediaQuery.of(context).size.height;
}

deviceWidth(context) {
  return MediaQuery.of(context).size.width;
}

bool isEmail(String em) {
  String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = RegExp(p);

  return regExp.hasMatch(em);
}

bool isPassword(String value) {
  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

jsonPrint(data) {
  final prettyString = const JsonEncoder.withIndent('  ').convert(data);
  log(prettyString);
}

callLoader() {
  return const Center(
      child: SizedBox(
          height: 30,
          width: 30,
          child:
              CircularProgressIndicator(strokeWidth: 3, color: Colors.white)));
}


// call alert message
callAlert(data, context) {
  final snackBar = SnackBar(
    elevation: 0,
    content: Container(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: data['alertColor'],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 28),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              data['icon'],
              size: 32,
              color: Colors.white,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              data['title'],
              style: const TextStyle(color: Colors.white, fontSize: 15),
            )
          ]),
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
