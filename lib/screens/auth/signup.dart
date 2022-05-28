import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/globe_functions/globe_functions.dart';

import '../../layouts/form_bg.dart';
import '../../styles/style.dart';
import '../../widgets/country_code.dart';
import '../../widgets/input_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conPasswordController = TextEditingController();
  bool isTermAccept = false;

  // late FocusNode _focusNode;
  @override
  void initState() {
    super.initState();
    // fullNameController.addListener(_printLatestValue);
    // emailController.addListener(_printLatestValue);
    // mobileController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    passwordController.dispose();
    conPasswordController.dispose();
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
            padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 19),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Welcome to Skillup',
                    style: Styles.heading,
                  ),
                  const Text(
                    'Create an account',
                    style: Styles.subHeading,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 140,
                    child: Text(
                        'Enter your information below create an account ',
                        textAlign: TextAlign.center,
                        style: Styles.smallHeading),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  MakeInput(
                      isPreIcon: false,
                      isSurIcon: false,
                      isShadow: false,
                      bgColor: Styles.sBgBlue,
                      lableOpacity: 0.5,
                      label: "Full name",
                      required: true,
                      inputController: fullNameController),
                  MakeInput(
                      isPreIcon: false,
                      isSurIcon: false,
                      isShadow: false,
                      bgColor: Styles.sBgBlue,
                      lableOpacity: 0.5,
                      label: "Email address",
                      required: true,
                      inputController: emailController),
                  CountryCodeInput(mobileController: mobileController),
                  const SizedBox(
                    height: 15,
                  ),
                  MakeInput(
                      isPreIcon: false,
                      isSurIcon: false,
                      isShadow: false,
                      bgColor: Styles.sBgBlue,
                      lableOpacity: 0.5,
                      label: "Password",
                      required: true,
                      inputController: passwordController),
                  MakeInput(
                      isPreIcon: false,
                      isSurIcon: false,
                      isShadow: false,
                      bgColor: Styles.sBgBlue,
                      lableOpacity: 0.5,
                      label: "Confirm Password",
                      required: true,
                      inputController: conPasswordController),
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
                            value: isTermAccept,
                            onChanged: (value) {
                              setState(() {
                                isTermAccept == true
                                    ? isTermAccept = false
                                    : isTermAccept = true;
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
                              'By checking this, you will agree to our Terms & Privacy Policy',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 12),
                            )) //Chec
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var data = {
                        "full_name": fullNameController.text,
                        "phone": mobileController.text,
                        "email": emailController.text,
                        "password": conPasswordController.text
                      };
                      jsonPrint(data);
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         child: FormBackground(),
                      //         type: PageTransitionType.fade));
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sign up'.toUpperCase(),
                            style: Styles.TxtWhite,
                          ),
                        ]),
                    style: Styles.mainElevatedBtn,
                  ),
                ],
              ),
            ),
          ),
          elevation: 0,
          shadowColor: Colors.grey,
          margin: const EdgeInsets.all(20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already have an account?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: FormBackground(activeForm: 'signin'),
                        type: PageTransitionType.fade));
              },
              child: const Text('Sign In',
                  style: TextStyle(
                      color: Styles.sTextBlue,
                      fontWeight: FontWeight.w500,
                      fontSize: 14)),
            )
          ],
        ),
        const SizedBox(height: 63),
      ]),
    );
  }
}
