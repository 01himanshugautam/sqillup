import 'package:flutter/material.dart';

import '../styles/style.dart';

class NotificationCard extends StatefulWidget {
  var notification;
   NotificationCard({Key? key, required this.notification}) : super(key: key);

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.symmetric(horizontal: 26),
      color: Styles.sBgBlue,
      width: double.infinity,
      height: 76,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: Row(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               widget.notification['icon'],
                const SizedBox(width: 10,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.notification['title'],style: Styles.cardSubHeadingSml,),
                      Text(widget.notification['time'],style: Styles.lightCardBtnText,)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(

            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: Styles.sBlue,
              shape: BoxShape.circle,

            ),
          )
        ],
      ),
    );
  }
}
