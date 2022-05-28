import 'package:flutter/material.dart';

class OverviewView extends StatelessWidget {
  final String? description;
  OverviewView({Key? key, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthScale = MediaQuery.of(context).size.width / 375;
    final double heightScale = MediaQuery.of(context).size.height / 812;
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: 18 * widthScale,
                right: 18 * widthScale,
                top: 15 * heightScale,
                bottom: 12 * heightScale),
            child: Text(description ?? ''),
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(12.0 * widthScale),
              child: Icon(
                Icons.comment,
                color: Colors.teal,
                size: 36 * widthScale,
              ),
            ))
      ],
    );
  }
}
