import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/widgets/input_widget.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/rounded_icon_button.dart';
import '../../dashboard.dart';
import '../../../../widgets/input_widget.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController currentPasswordController = TextEditingController();
  FToast fToast = FToast();
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Styles.sTextBlue,
      ),
      child: SizedBox(
        width: 300,
        child: Row(
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 24,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Text("Password change successfully.", style: Styles.tosterText),
          ],
        ),
      ),
    );
    fToast.showToast(
        child: toast,
        toastDuration: const Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(margin: const EdgeInsets.only(top: 30), child: child),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sBgBlue,
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Change password',
            style: Styles.subHeadingSemiBold,
          ),
          centerTitle: true,
          elevation: 0,
          leading: RoundedIconButton(
              isLight: false,
              padding: 7,
              icon: Icons.arrow_back_ios,
              navigateTo: Dashboard(
                selectedBottomTab: 3,
              ))),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Password',
                style: Styles.txtBrown,
              ),
              const SizedBox(
                height: 13,
              ),
              MakeInput(
                  isPreIcon: false,
                  isSurIcon: false,
                  label: 'Enter current password',
                  isShadow: false,
                  bgColor: Colors.white,
                  lableOpacity: 1,
                  required: true,
                  inputController: currentPasswordController),
              Text(
                'New Password',
                style: Styles.txtBrown,
              ),
              const SizedBox(
                height: 13,
              ),
              MakeInput(
                  isPreIcon: false,
                  isSurIcon: false,
                  label: 'Enter new password',
                  isShadow: false,
                  bgColor: Colors.white,
                  lableOpacity: 1,
                  required: true,
                  inputController: currentPasswordController),
              Text(
                'Repeat New Password',
                style: Styles.txtBrown,
              ),
              const SizedBox(
                height: 13,
              ),
              MakeInput(
                  isPreIcon: false,
                  isSurIcon: false,
                  label: 'Repeat new password',
                  isShadow: false,
                  bgColor: Colors.white,
                  lableOpacity: 1,
                  required: true,
                  inputController: currentPasswordController),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () async {
                  _showToast();
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Dashboard(
                            selectedBottomTab: 3,
                          ),
                          type: PageTransitionType.fade));
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'save'.toUpperCase(),
                        style: Styles.TxtWhite,
                      ),
                    ]),
                style: Styles.mainElevatedBtn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
