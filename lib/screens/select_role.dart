import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/styles/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../layouts/form_bg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedRole = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Styles.sBgBlue,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            Styles.sBgBlue1,
          ],
        )),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: 66,
                  height: 66,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF707070).withOpacity(.5),
                          offset: const Offset(0.0, 14.0),
                          blurRadius: 40.0,
                        )
                      ]),
                  child: Image.asset(
                    'assets/mainLogo.png',
                    // width: 180,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'What is your role? ',
                  style: TextStyle(
                      color: Styles.sTextDarkBlue,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 41,
                ),
                GestureDetector(
                  onTap: () async {
                    setState(() {
                      selectedRole == "parent"
                          ? selectedRole = ""
                          : selectedRole = "parent";
                    });
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setString('selectedRole', selectedRole);
                    Navigator.push(
                        context,
                        PageTransition(
                            child: FormBackground(activeForm: 'signin'),
                            type: PageTransitionType.fade));
                  },
                  child: Container(
                    width: 164,
                    height: 164,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedRole == "parent"
                            ? Image.asset(
                                'assets/family-selected.png',
                                width: 60,
                              )
                            : Image.asset(
                                'assets/family-unselect.png',
                                width: 60,
                              ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Parent',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: selectedRole == "parent"
                                  ? Colors.white
                                  : Styles.sBlue),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: selectedRole == "parent"
                            ? Styles.sBlue
                            : Styles.sBgGray,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 5),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF707070).withOpacity(.2),
                            offset: const Offset(0.0, 15.0),
                            blurRadius: 20.0,
                          )
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedRole == "student"
                          ? selectedRole = ""
                          : selectedRole = "student";
                    });
                    // Navigator.push(
                    //     context,
                    //     PageTransition(
                    //         child: FormBackground(activeForm: 'signup'),
                    //         type: PageTransitionType.fade));
                  },
                  child: Container(
                    width: 164,
                    height: 164,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedRole != "student"
                            ? Image.asset(
                                'assets/reading-book-unselect.png',
                                width: 60,
                              )
                            : Image.asset(
                                'assets/reading-book-selected.png',
                                width: 60,
                              ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Student',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: selectedRole == "student"
                                  ? Colors.white
                                  : Styles.sBlue),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: selectedRole == "student"
                            ? Styles.sBlue
                            : Styles.sBgGray,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 5),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF707070).withOpacity(.2),
                            offset: const Offset(0.0, 15.0),
                            blurRadius: 20.0,
                          )
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 47,
                ),
                const SizedBox(
                    width: 200,
                    child: Text(
                      'By continuing, you acknowledge that you have read and agree to our',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Styles.sTextDarkBlue, fontSize: 12),
                    )),
                const Text(
                  'Terms & Conditions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Styles.sTextBlue,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
