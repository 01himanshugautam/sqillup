import 'package:flutter/material.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/input_widget.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController msgController = TextEditingController();

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
            "Contact Us",
            style: TextStyle(
                fontSize: 18,
                color: Styles.sTextDarkBlue,
                fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Styles.sBlue,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            // child: Icon(
            //   Icons.notifications,
            //   color: Colors.black,
            // ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Styles.sBlue,
              ),
              child: Center(
                  child: Column(
                children: [
                  Image.asset(
                    'assets/Groupcon.png',
                    width: 157,
                  ),
                  Text(
                    'Leave us a message',
                    style: Styles.funTextLighter,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                ],
              )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your name',
                    style: Styles.txtBrown,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  MakeInput(
                      isPreIcon: false,
                      isSurIcon: false,
                      label: '',
                      isShadow: false,
                      bgColor: Colors.white,
                      lableOpacity: 1,
                      required: true,
                      inputController: nameController),
                  Text(
                    'Email',
                    style: Styles.txtBrown,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  MakeInput(
                      isPreIcon: false,
                      isSurIcon: false,
                      label: '',
                      isShadow: false,
                      bgColor: Colors.white,
                      lableOpacity: 1,
                      required: true,
                      inputController: emailController),
                  Text(
                    'Type your message',
                    style: Styles.txtBrown,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  MakeInput(
                      isPreIcon: false,
                      isSurIcon: false,
                      label: '',
                      isShadow: false,
                      bgColor: Colors.white,
                      lableOpacity: 1,
                      required: true,
                      inputController: msgController),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // _showToast();
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         child:  Dashboard(selectedBottomTab: 3,),
                      //         type: PageTransitionType.fade));
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Send'.toUpperCase(),
                            style: Styles.TxtWhite,
                          ),
                        ]),
                    style: Styles.mainElevatedBtn,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
