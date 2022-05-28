import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sqillup_student/styles/style.dart';

import '../screens/dashboard/screens/growth/create_rewards.dart';

class RewardSmallCard extends StatefulWidget {
  const RewardSmallCard({Key? key}) : super(key: key);

  @override
  State<RewardSmallCard> createState() => _RewardSmallCardState();
}

class _RewardSmallCardState extends State<RewardSmallCard> {
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
            Text("Reward Deleted successfully", style: Styles.tosterText),
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
    return Container(
      width: double.infinity,
      height: 55,
      padding: const EdgeInsets.only(left: 10),
      // padding: EdgeInsets.only(left: 10,top:7,bottom: 7),
      decoration: Styles.whiteCard,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 42,
                height: 42,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(42),
                ),
                child: AvatarView(
                  borderWidth: 2,
                  radius: 42,
                  borderColor: Colors.white,
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Styles.sBgGray.withOpacity(0.7),
                  imagePath: 'assets/walk.png',
                  placeHolder: const CircularProgressIndicator(
                    strokeWidth: 10,
                    color: Styles.sBlue,
                  ),
                  errorWidget: Container(
                    child: const Icon(
                      Icons.error,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 17,
              ),
              const Text(
                'Outing',
                style: Styles.txtDark,
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                child: const Text(
                  '75+',
                  style: Styles.TxtWhite,
                ),
              ),
              const SizedBox(
                width: 17,
              ),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return SafeArea(
                              child: Container(
                            height: 180,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: ListView(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: CreateRewards(
                                                isEdit: true,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    style: Styles.roundedElevatedBtn,
                                    child: const Text('Edit')),
                                ElevatedButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return SafeArea(
                                                child: Container(
                                              height: 200,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20,
                                                      horizontal: 20),
                                              child: Column(children: [
                                                Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            33),
                                                    child: Text(
                                                      'Are you sure want to Delete the\nCreated reward?',
                                                      style: Styles
                                                          .txtSemiBoldDark,
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          _showToast();
                                                          Navigator.pop(
                                                              context);
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        style: Styles
                                                            .roundedElevatedBtn,
                                                        child: const Text(
                                                            'Confrim')),
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                          'Cancel',
                                                          style: Styles.txtDark,
                                                        )),
                                                  ],
                                                ),
                                              ]),
                                            ));
                                          });
                                    },
                                    style: Styles.roundedRedElevatedBtn,
                                    child: const Text('Delete')),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Cancel',
                                      style: Styles.txtDark,
                                    )),
                              ],
                            ),
                          ));
                        });
                  },
                  icon: const Icon(Icons.more_vert))
            ],
          )
        ],
      ),
    );
  }
}
