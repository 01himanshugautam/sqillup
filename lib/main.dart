import 'package:flutter/material.dart';
import 'package:sqillup_student/globe_functions/globe_functions.dart';
import 'package:sqillup_student/layouts/form_bg.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';
// import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: deviceWidth(context),
        // minWidth: 1200,

        // minWidth: 450,
        defaultScale: true,
        // breakpoints: [
        //   const ResponsiveBreakpoint.resize(500, name: MOBILE),
        //   const ResponsiveBreakpoint.autoScale(800, name: TABLET),
        //   // const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
        //   // const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        //   // const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        // ],
      ),
      // home: FormBackground(
      //   activeForm: 'signin',
      // ),
      home: Dashboard(selectedBottomTab: 0),
    );
  }
}
