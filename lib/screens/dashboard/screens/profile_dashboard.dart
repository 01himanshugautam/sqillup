import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/globe_functions/globe_functions.dart';
import 'package:sqillup_student/screens/dashboard/screens/profile/contact_us.dart';
import 'package:sqillup_student/screens/dashboard/screens/profile/edit_profile.dart';
import 'package:sqillup_student/screens/dashboard/screens/profile/faq.dart';
import 'package:sqillup_student/screens/dashboard/screens/profile/notification_settings.dart';
import 'package:sqillup_student/widgets/sized_boxes.dart';

import '../../../layouts/form_bg.dart';
import '../../../styles/style.dart';

class ProfileDashboard extends StatefulWidget {
  const ProfileDashboard({Key? key}) : super(key: key);

  @override
  State<ProfileDashboard> createState() => _ProfileDashboardState();
}

class _ProfileDashboardState extends State<ProfileDashboard> {
  List profileMenus = [
    {"name": "My profile", "image": "assets/profile.png"},
    {"name": "Notification setting", "image": "assets/setting.png"},
    {"name": "FAQ", "image": "assets/object.png"},
    {"name": "Contact Us", "image": "assets/ques.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.sBgBlue,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Styles.sBlue,
        elevation: 0,
        automaticallyImplyLeading: false,
        // title: Text(
        //   'My profile',
        //   style: Styles.subHeadingSemiBold,
        // ),
        centerTitle: true,
        actions: [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Styles.sBlue,
                ),
                child: Container(
                  transform: Matrix4.translationValues(0.0, -15.0, 0.0),
                  child: Column(children: [
                    Container(
                        transform: Matrix4.translationValues(180.0, 40.0, 0.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: FormBackground(activeForm: 'signin'),
                                    type: PageTransitionType.fade));
                          },
                          child: const Text(
                            'Logout',
                            style: Styles.TxtWhite,
                          ),
                        )),
                    Center(
                      child: AvatarView(
                        // borderWidth: 2,
                        radius: 50,
                        borderColor: Colors.white,
                        avatarType: AvatarType.CIRCLE,
                        backgroundColor: Styles.sBgGray.withOpacity(0.7),
                        imagePath: 'assets/images/profile.png',
                        placeHolder: const CircularProgressIndicator(
                          strokeWidth: 10,
                          color: Styles.sBlue,
                        ),
                        errorWidget: Container(
                          child: const Icon(
                            Icons.error,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    const SizedBoxH10(),
                    Text(
                      'Lucifer Morningstar',
                      style: Styles.txtWhite,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'KS-2, London, UK',
                      style: Styles.darkCardTextWhite,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
                ),
              ),
              // Divider(thickness: 1, height: 0,),
              const Divider(
                thickness: 1,
                height: 0,
              ),
              SizedBox(
                height: deviceHeight(context),
                child: ListView(
                  children: ListTile.divideTiles(context: context, tiles: [
                    for (var menu in profileMenus)
                      ListTile(
                        onTap: () {
                          if (menu['name'] == 'My profile') {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: const EditProfile(),
                                    type: PageTransitionType.fade));
                          }
                          if (menu['name'] == 'Notification setting') {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: const NotificationSettings(),
                                    type: PageTransitionType.fade));
                          }
                          if (menu['name'] == 'Contact Us') {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: const Contact(),
                                    type: PageTransitionType.fade));
                          }
                          if (menu['name'] == 'FAQ') {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: const Faq(),
                                    type: PageTransitionType.fade));
                          }
                        },
                        dense: true,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        leading: Image.asset(
                          menu["image"],
                          width: 23,
                        ),
                        title: Text(
                          menu["name"],
                          style: Styles.txtBrown,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                          color: Styles.sBrown,
                        ),
                      ),
                    const Divider(thickness: 0, height: 0),
                  ]).toList(),
                ),
              ),
              // Divider(thickness: 1, height: 0,),
            ],
          ),
        ),
      ),
    );
  }
}
