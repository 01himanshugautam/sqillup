import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/screens/dashboard/dashboard.dart';
import 'package:sqillup_student/screens/dashboard/notifications.dart';

import '../../../../styles/style.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String? base64Image;
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController address2Controller = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  updateImage(XFile image) {
    print('im_image');
    final bytes = File(image.path).readAsBytesSync();
    setState(
        () => base64Image = "data:image/png;base64," + base64Encode(bytes));
    print("img_pan : $base64Image");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.sBgBlue,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          // ignore: prefer_const_constructors
          title: const Center(
            child: Text(
              "Profile",
              style: TextStyle(
                  fontSize: 18,
                  color: Styles.sTextDarkBlue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          elevation: 0.0,
          backgroundColor: Styles.sBgBlue,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Notifications(
                            backTo: Dashboard(
                              selectedBottomTab: 1,
                            ),
                          ),
                          type: PageTransitionType.fade));
                },
                icon: Icon(Icons.notifications_rounded)),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
          Container(
            decoration: const BoxDecoration(
              color: Styles.sBgBlue,
            ),
            child: Column(children: [
              Center(
                  child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/images/profile.png'),
                ),
              )),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, bottom: 15.0, top: 40.0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Karina Michael",
                        style: TextStyle(
                          color: Styles.sTextDarkBlue,
                          fontSize: 14,
                          fontFamily: 'poppins-regular',
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.0),
                  ),
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "30th, September, 1998",
                        style: TextStyle(
                          color: Styles.sTextDarkBlue,
                          fontSize: 14,
                          fontFamily: 'poppins-regular',
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.0),
                  ),
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "St. Andrews High School",
                        style: TextStyle(
                          color: Styles.sTextDarkBlue,
                          fontSize: 14,
                          fontFamily: 'poppins-regular',
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 9.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              "IGSCE Edexcel",
                              style: TextStyle(color: Styles.sTextDarkBlue),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        Container(
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              "KS 3",
                              style: TextStyle(
                                color: Styles.sTextDarkBlue,
                                fontSize: 14,
                                fontFamily: 'poppins-regular',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.0),
                  ),
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Class - 8",
                        style: TextStyle(
                          color: Styles.sTextDarkBlue,
                          fontSize: 14,
                          fontFamily: 'poppins-regular',
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.0),
                  ),
                ],
              ),
            ),
          )
        ]))));
  }
}
