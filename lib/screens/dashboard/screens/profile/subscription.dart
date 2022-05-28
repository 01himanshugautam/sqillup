import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../styles/style.dart';
import '../../../../widgets/growth_tabs.dart';
import '../../../../widgets/payment_history_card.dart';
import '../../../../widgets/rounded_icon_button.dart';
// import '../../../payment/billing_address.dart';
import '../../dashboard.dart';
import '../../notifications.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  bool isSwitched = false;
  var _value;
  bool isEditCardDetails = false;
  bool isAddNewCard = false;

  bool val = false;
  List activityTabs = [
    'My Plan',
    'Card detail',
    'History',
  ];
  var selectedTab = 'My Plan';

  updateTab(tab) {
    setState(() {
      selectedTab = tab;
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
            'Subscription',
            style: Styles.subHeadingSemiBold,
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            Container(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: Notifications(backTo: const Subscription()),
                              type: PageTransitionType.fade));
                    },
                    icon: const Icon(
                      Icons.notifications_rounded,
                      color: Styles.sTextDarkBlue,
                    )))
          ],
          leading: RoundedIconButton(
              isLight: false,
              padding: 7,
              icon: Icons.arrow_back_ios,
              navigateTo: Dashboard(selectedBottomTab: 3,))),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GrowthTabs(
              updateTab: updateTab,
              tabs: activityTabs,
              selectedTab: selectedTab),
        ),
        const SizedBox(
          height: 20,
        ),
        //  tabs
        if (selectedTab == 'My Plan')
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pro subscription plan',
                        style: Styles.cardSubHeadingMid,
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                            color: Styles.sBlue, shape: BoxShape.circle),
                        child: Text(
                          '1',
                          style: Styles.txtWhite,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '\$ 268.98 ',
                        style: Styles.payCardTitle3Blu,
                      ),
                      Text(
                        'Paid',
                        style: Styles.cardSubHeadingMid,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subscription date',
                            style: Styles.payCardTextLighter,
                          ),
                          Text(
                            'April 09, 2021',
                            style: Styles.payCardTextTitle,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subscription end',
                            style: Styles.payCardTextLighter,
                          ),
                          Text(
                            'April 09, 2022',
                            style: Styles.payCardTextTitle,
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pro subscription plan',
                        style: Styles.cardSubHeadingMid,
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                            color: Styles.sBlue, shape: BoxShape.circle),
                        child: Text(
                          '1',
                          style: Styles.txtWhite,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '\$ 268.98 ',
                        style: Styles.payCardTitle3Blu,
                      ),
                      Text(
                        'Paid',
                        style: Styles.cardSubHeadingMid,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subscription date',
                            style: Styles.payCardTextLighter,
                          ),
                          Text(
                            'April 09, 2021',
                            style: Styles.payCardTextTitle,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subscription end',
                            style: Styles.payCardTextLighter,
                          ),
                          Text(
                            'April 09, 2022',
                            style: Styles.payCardTextTitle,
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Auto renewal',
                        style: Styles.txtLargeMidDark,
                      ),
                      CupertinoSwitch(
                        value: isSwitched,
                        trackColor: Styles.sBgGray,
                        thumbColor: Colors.white,
                        activeColor: Styles.sBlue,
                        onChanged: (value) {
                          setState(() {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return SafeArea(
                                      child: Container(
                                    height: 250,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 20),
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Note:',
                                            style: Styles.txtLargeMidRed,
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 14),
                                        child: Text(
                                          'By turning ON auto renewal, the amount\nwill be automatically deducted from your\naccount after your subscription plan is\nOver.',
                                          style: Styles.txtLargeMidDark,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                // _showToast();
                                                // Navigator.pop(context);
                                                // Navigator.pop(context);
                                              },
                                              style: Styles.roundedElevatedBtn,
                                              child: const Text('Confrim')),
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
                                    ]),
                                  ));
                                });
                            isSwitched = value;
                          });
                        },
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 42,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Cancel subscription Early?',
                      style: Styles.payCardTitle2Dark,
                    ))
              ])
            ],
          ),

        if (selectedTab == 'Card detail')
          isAddNewCard
              ? Column(
                  children: const [],
                )
              : Column(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Choose default payment',
                          style: Styles.midHeadingBlueSml,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  //radio
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isEditCardDetails
                            ? isEditCardDetails = false
                            : isEditCardDetails = true;
                      });
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        isEditCardDetails
                            ? Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Edit details',
                                        style: Styles.midHeadingBlueSml,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SafeArea(
                                                    child: Container(
                                                  height: 200,
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 20,
                                                      horizontal: 20),
                                                  child: Column(children: [
                                                    Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(33),
                                                        child: Text(
                                                          'Are you sure want to Delete the\nSelected card details ?',
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
                                                              // _showToast();
                                                              // Navigator.pop(context);
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            style: Styles
                                                                .roundedElevatedBtn,
                                                            child:
                                                                const Text('Delete')),
                                                        TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: const Text(
                                                              'Cancel',
                                                              style: Styles
                                                                  .txtDark,
                                                            )),
                                                      ],
                                                    ),
                                                  ]),
                                                ));
                                              });
                                        },
                                        child: Container(
                                          width: 21,
                                          height: 21,
                                          child: const Icon(
                                            Icons.delete,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Styles.sBlue),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: Styles.whiteCard,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Credit Card number',
                                          style: Styles.midHeadingBlue,
                                        ),
                                        const SizedBox(
                                          height: 11,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/visa.png',
                                              width: 28,
                                            ),
                                            const SizedBox(
                                              width: 11,
                                            ),
                                            Text('****** 5545',
                                                style: Styles.payCardTextDark)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 13),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: Styles.whiteCard,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Card holder name',
                                          style: Styles.midHeadingBlue,
                                        ),
                                        const SizedBox(
                                          height: 11,
                                        ),
                                        Text(
                                          'John borden',
                                          style: Styles.payCardTextDark,
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 13),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    decoration: Styles.whiteCard,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Expiry date',
                                          style: Styles.midHeadingBlue,
                                        ),
                                        const SizedBox(
                                          height: 11,
                                        ),
                                        Text(
                                          '10/2023',
                                          style: Styles.payCardTextLighter,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                    toggleable: true,
                                  ),
                                  const SizedBox(
                                    width: 26,
                                  ),
                                  Image.asset(
                                    'assets/visa.png',
                                    width: 38,
                                  ),
                                  const SizedBox(
                                    width: 42,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ending in  2482',
                                        style: Styles.midHeadingSmall,
                                      ),
                                      Text(
                                        'John Borden',
                                        style: Styles.midHeading,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                      ]),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose the payment method to edit',
                            style: Styles.payCardTextLighter,
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(context, PageTransition(child: BillingAddress(checkAuth: true,), type: PageTransitionType.fade));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 31,
                                  height: 31,
                                  child: const Icon(
                                    Icons.add,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Styles.sBlue),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Add payment method',
                                  style: Styles.txtLargeMid1Dark,
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                ]),
        if (selectedTab == "History")
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pro subscription plan',
                        style: Styles.cardSubHeadingMid,
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                            color: Styles.sBlue, shape: BoxShape.circle),
                        child: Text(
                          '1',
                          style: Styles.txtWhite,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '\$ 268.98 ',
                        style: Styles.payCardTitle3Dark,
                      ),
                      Text(
                        'Active',
                        style: Styles.cardSubHeadingMidGreen,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subscription date',
                            style: Styles.payCardTextLighter,
                          ),
                          Text(
                            'April 09, 2021',
                            style: Styles.payCardTextTitle,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subscription end',
                            style: Styles.payCardTextLighter,
                          ),
                          Text(
                            'April 09, 2022',
                            style: Styles.payCardTextTitle,
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
              Text(
                'Subscription fees are billed at the beginning of each period\nand may take a few days after the billing date to appear on\nyour account.',
                style: Styles.smallHeadingDark,
              ),
              const SizedBox(height: 28,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: PaymentHistoryCard(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Text('Note: We only show up to 1 year of billing history',style: Styles.smallHeadingDark,),
                  ],
                ),
              )


            ],
          )
      ])),
    );
  }
}
