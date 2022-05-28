import 'package:flutter/material.dart';
import 'package:sqillup_student/screens/auth/forgot_password.dart';
import 'package:sqillup_student/screens/auth/signup.dart';
import 'package:sqillup_student/screens/auth/verification.dart';

import '../screens/auth/signin.dart';
import '../styles/style.dart';

class FormBackground extends StatefulWidget {
  String activeForm;
  FormBackground({Key? key, required this.activeForm}) : super(key: key);

  @override
  State<FormBackground> createState() => _FormBackgroundState();
}

class _FormBackgroundState extends State<FormBackground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sBgBlue,
      body: Stack(
        children: [
          Container(
              transform: Matrix4.translationValues(-5.0, -200, 0.0),
              child: Image.asset(
                'assets/form_bg.png',
                fit: BoxFit.fitHeight,
                width: 600,
                height: 600,
              )),
          Container(
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 80),
                Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                      width: 76,
                      height: 76,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Image.asset(
                        'assets/mainLogo.png',
                        width: 30,
                        height: 30,
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                if (widget.activeForm == 'signup') const SignUp(),
                if (widget.activeForm == 'signin') const SignIn(),
                if (widget.activeForm == 'forgot_password')
                  const ForgotPassword(),
                if (widget.activeForm == 'verification') const Verification()
              ]),
            ),
          )
        ],
      ),
    );
  }
}
