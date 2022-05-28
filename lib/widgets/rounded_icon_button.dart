import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../styles/style.dart';

class RoundedIconButton extends StatefulWidget {
  Widget navigateTo;
  IconData icon;
  double padding;
  bool isLight;
   RoundedIconButton({Key? key,required this.isLight, required this.padding, required this.icon, required this.navigateTo}) : super(key: key);

  @override
  State<RoundedIconButton> createState() => _RoundedIconButtonState();
}

class _RoundedIconButtonState extends State<RoundedIconButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(widget.padding),
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape:  const CircleBorder(side: BorderSide(color:  Styles.sBlue, width: 2) ), primary:widget.isLight? Colors.white: Styles.sBlue),
        child: Container(
          width: widget.padding *4,
          height:  widget.padding *4,
          alignment: Alignment.center,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Icon(
            widget.icon,
            size: (widget.padding*3)-3,
            color: widget.isLight?Styles.sBlue: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.push(context, PageTransition(child: widget.navigateTo, type: PageTransitionType.fade));
        },
      ),
    );
  }
}
