import 'package:flutter/material.dart';

class CircleShape extends StatefulWidget {
  Color color;
  double size;
   CircleShape({Key? key, required this.color, required this.size}) : super(key: key);

  @override
  State<CircleShape> createState() => _CircleShapeState();
}

class _CircleShapeState extends State<CircleShape> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          color: widget.color,
          shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF707070).withOpacity(.5),
                offset: const Offset(0.0, 8.0),
                blurRadius: 10.0,
              )
            ]
        ),
      );
  }
}
