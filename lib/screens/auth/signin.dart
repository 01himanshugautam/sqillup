import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqillup_student/http_services/auth/auth_apis.dart';

import '../../globe_functions/globe_functions.dart';
import '../../styles/style.dart';
import '../../widgets/input_widget.dart';
import '../dashboard/dashboard.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  int groupValue = 1;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    // print('Second text field: ${fullNameController.text}');
    // print('Second text field: ${emailController.text}');
    // print('Second text field: ${mobileController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Welcome back',
                    style: Styles.heading,
                  ),
                  const Text(
                    'Sign in to your account',
                    style: Styles.subHeading,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 140,
                    child: Text('Enter your email address and password below',
                        textAlign: TextAlign.center,
                        style: Styles.smallHeading),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  // Center(
                  //   child: SizedBox(
                  //     width: 250,
                  //     child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //         children: [
                  //           Expanded(
                  //             child: Row(
                  //               children: [
                  //                 Radio(
                  //                     fillColor: MaterialStateColor.resolveWith((states) => Styles.sBorderBlue),
                  //                     value: 1,
                  //                     groupValue: groupValue,
                  //                     onChanged: (index) {
                  //                       setState(() {
                  //                         groupValue = 1;
                  //                       });
                  //                     }),
                  //                 Expanded(
                  //                   child: Text('Parent',  style: TextStyle(fontSize: 14, color: Styles.sTextDarkBlue)),
                  //                 )
                  //               ],
                  //             ),
                  //             flex: 1,
                  //           ),
                  //           Expanded(
                  //             child: Row(
                  //               children: [
                  //                 Radio(
                  //                     fillColor: MaterialStateColor.resolveWith((states) => Styles.sBorderBlue),
                  //
                  //                     value: 2,
                  //                     groupValue: groupValue,
                  //                     onChanged: (index) {
                  //                       setState(() {
                  //                         groupValue= 2;
                  //                       });
                  //                     }),
                  //                 Expanded(child: Text('Student', style: TextStyle(fontSize: 14, color: Styles.sTextDarkBlue),))
                  //               ],
                  //             ),
                  //             flex: 1,
                  //           ),
                  //         ]),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 15,
                  ),
                  MakeInput(
                      isPreIcon: false,
                      isSurIcon: true,
                      isShadow: false,
                      bgColor: Styles.sBgBlue,
                      lableOpacity: 1.0,
                      label: "Username",
                      required: true,
                      inputController: emailController),
                  MakeInput(
                      isPreIcon: false,
                      isSurIcon: true,
                      isShadow: false,
                      bgColor: Styles.sBgBlue,
                      lableOpacity: 0.5,
                      label: "Password",
                      required: true,
                      inputController: passwordController),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 21,
                          height: 21,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(2),
                              border:
                                  Border.all(width: 2, color: Styles.sBlue)),
                          child: Checkbox(
                            fillColor:
                                MaterialStateProperty.all(Colors.transparent),
                            checkColor: Styles.sBorderBlue,
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe == true
                                    ? rememberMe = false
                                    : rememberMe = true;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        const SizedBox(
                            width: 230,
                            child: Text(
                              'Remember me',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 12),
                            )) //Chec
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      final prefs = await SharedPreferences.getInstance();
                      print(prefs.get('selectedRole'));
                      var data = {
                        "user_name": emailController.text,
                        "password": passwordController.text
                      };
                      HttpServices httpServices = HttpServices();

                      var res = await httpServices.login(data, context);
                      jsonPrint(res);
                      if (res == 422) {
                        Map data = {
                          'title': ''
                              'Enter valid email and password',
                          'icon': Ionicons.warning_outline,
                          'alertColor': Styles.sTextRedDark
                        };
                        callAlert(data, context);
                        setState(() {
                          isLoading = false;
                        });
                      } else if (res == 403) {
                        Map data = {
                          'title': ''
                              'Email and password not valid',
                          'icon': Ionicons.warning_outline,
                          'alertColor': Styles.sTextRedDark
                        };
                        callAlert(data, context);
                        setState(() {
                          isLoading = false;
                        });
                      } else if (res == 201) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: Dashboard(selectedBottomTab: 0),
                                type: PageTransitionType.fade));
                      }
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          isLoading
                              ? callLoader()
                              : Text(
                                  'Log in'.toUpperCase(),
                                  style: Styles.TxtWhite,
                                ),
                        ]),
                    style: Styles.mainElevatedBtn,
                  ),
                  const SizedBox(height: 21),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         PageTransition(
                  //             child:
                  //                 FormBackground(activeForm: 'forgot_password'),
                  //             type: PageTransitionType.fade));
                  //   },
                  //   child: Text('Forgot password?',
                  //       style: TextStyle(
                  //           color: Styles.sTextBlue,
                  //           fontWeight: FontWeight.w500,
                  //           fontSize: 14)),
                  // )
                ],
              ),
            ),
          ),
          elevation: 0,
          shadowColor: Colors.grey,
          margin: const EdgeInsets.all(20),
        ),
        const SizedBox(height: 63),
      ]),
    );
  }
}
