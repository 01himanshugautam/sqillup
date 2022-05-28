import 'package:flutter/material.dart';
import 'package:sqillup_student/styles/style.dart';

class PaymentHistoryCard extends StatefulWidget {
  const PaymentHistoryCard({Key? key}) : super(key: key);

  @override
  State<PaymentHistoryCard> createState() => _PaymentHistoryCardState();
}

class _PaymentHistoryCardState extends State<PaymentHistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 2,
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'March 09, 2022',
                      style: Styles.txtSemiBoldDark,
                    ),
                    Text(
                      'Pro subscription plan',
                      style: Styles.mid1Heading,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'April 09 2022 - May 09 2022',
                      style: Styles.lightMidCardText,
                    ),
                    // SizedBox(height: 7,),
                  ],
                ),
                Text('USD 25', style: Styles.txtSemiBoldDark)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/visa.png',
                      width: 28,
                    ),
                    const Text('**** **** 4454')
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      color: Styles.sBlue, shape: BoxShape.circle),
                  child: Text(
                    '1',
                    style: Styles.txtWhite,
                  ),
                )
              ],
            )
          ]),
        ),
        const Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
