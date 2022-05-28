import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../layouts/form_bg.dart';
import '../../styles/style.dart';
import '../../widgets/input_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: [Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'Reset Password',
                      style: Styles.heading,
                    ),
                    const Text(
                      'Forgot Password',
                      style: Styles.subHeading,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(

                      child:  Text(
                          'Enter your parent email to get the link.',
                          textAlign: TextAlign.center,
                          style:
                          Styles.smallHeading),
                    ),
                    const SizedBox(
                      height: 51,
                    ),

                    MakeInput(
                        isPreIcon: false,
                        isSurIcon: true,
                      isShadow: false,
                        bgColor: Styles.sBgBlue,
                        lableOpacity: 1.0,
                        label: "Email address",
                        required: true,
                        inputController: emailController),

                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: FormBackground(activeForm: 'verification',),
                                type: PageTransitionType.fade));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'SEND code'.toUpperCase(),
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
              children:  [
                const Text('Go back to',
                  style: TextStyle(
                      color:Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),),
                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: FormBackground(activeForm: 'signin'),
                            type: PageTransitionType.fade));
                  },
                  child: const Text('Sign In' ,style: TextStyle(
                      color: Styles.sTextBlue,
                      fontWeight: FontWeight.w500,
                      fontSize: 14)),
                )],
            ),
            const SizedBox(height: 63),

          ]),
    );
  }
}
