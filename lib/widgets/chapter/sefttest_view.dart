// import 'package:sqillup_student/screens/selftest_screen/selftest_screen.dart';
import 'package:sqillup_student/styles/style.dart';
import 'package:flutter/material.dart';

class SelftestView extends StatelessWidget {
  const SelftestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthScale = MediaQuery.of(context).size.width / 375;
    final double heightScale = MediaQuery.of(context).size.height / 812;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 12 * widthScale,
              right: 12 * widthScale,
              top: 12 * heightScale),
          child: Text(
              'Read all the instruction before start the self test exam',
              style: TextStyle(
                  fontSize: 13 * widthScale, fontWeight: FontWeight.w600)),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                left: 16 * widthScale,
                right: 16 * widthScale,
                top: 16 * heightScale),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return instructionItem(context);
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 16 * widthScale,
              right: 16 * widthScale,
              top: 8 * heightScale,
              bottom: 12 * heightScale),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50 * heightScale,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const SelfTestScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Styles.sBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0 * widthScale),
                      ),
                    ),
                    child: Text(
                      'START TEST',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16 * widthScale),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget instructionItem(BuildContext context) {
    final double widthScale = MediaQuery.of(context).size.width / 375;
    return Padding(
      padding: EdgeInsets.only(bottom: 12 * widthScale, left: 25 * widthScale),
      child: Row(
        children: [
          Icon(
            Icons.check,
            color: const Color(0xff2BBFC0),
            size: 22 * widthScale,
          ),
          SizedBox(
            width: 8 * widthScale,
          ),
          Text('Total number of questions 20',
              style: TextStyle(
                fontSize: 15 * widthScale,
              ))
        ],
      ),
    );
  }
}
