import 'package:flutter/material.dart';

import '../../styles/style.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                      'Verification',
                      style: Styles.heading,
                    ),
                    const Text(
                      'Forgot Password',
                      style: Styles.subHeading,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 120,
                      child:  Text(
                          'Please check your email inbox or a 4 digit code',
                          textAlign: TextAlign.center,
                          style:
                         Styles.smallHeading),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 20,
                      direction: Axis.horizontal,
                      runSpacing: 10,
                      children: [
                        _otpTextField(context, true),
                        _otpTextField(context, false),
                        _otpTextField(context, false),
                        _otpTextField(context, false),

                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      onPressed: () async {
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
                              'Verify'.toUpperCase(),
                              style: Styles.TxtWhite,
                            ),
                          ]),
                      style: Styles.mainElevatedBtn,
                    ),
                    const SizedBox(height: 24),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text('Didn’t received the code?',
                          style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),),
                        const SizedBox(width: 5,),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     PageTransition(
                            //         child: FormBackground(activeForm: 'signin'),
                            //         type: PageTransitionType.fade));
                          },
                          child: const Text('Resend Code' ,style: TextStyle(
                              color: Styles.sTextBlue,
                              fontWeight: FontWeight.w500,
                              fontSize: 14)),
                        )],
                    ),

                  ],
                ),
              ),
            ),
            elevation: 0,
            shadowColor: Colors.grey,
            margin: const EdgeInsets.all(20),
          ),



          ]),
    );
  }
}

Widget _otpTextField(BuildContext context, bool autoFocus) {
  return  Container(
    height: MediaQuery.of(context).size.shortestSide * 0.13,
    decoration: BoxDecoration(
      // border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(4),
      color: Styles.sBgBlue,
      shape: BoxShape.rectangle,
    ),
    child: AspectRatio(
      aspectRatio: 1,
      child: TextField(

        autofocus: autoFocus,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(),
        maxLines: 1,
        onChanged: (value) {
          if(value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    ),
  );
}