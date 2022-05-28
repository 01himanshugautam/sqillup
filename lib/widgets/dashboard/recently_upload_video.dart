import 'package:flutter/material.dart';

class DashboardResentVid extends StatefulWidget {
  const DashboardResentVid({Key? key}) : super(key: key);

  @override
  State<DashboardResentVid> createState() => _DashboardResentVidState();
}

class _DashboardResentVidState extends State<DashboardResentVid> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(children: <Widget>[
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1,
                                  color: Colors.black.withOpacity(0.1)))),
                      child: ListTile(
                        horizontalTitleGap: 10,
                        contentPadding: const EdgeInsets.all(-5),
                        leading: const CircleAvatar(
                          radius: 40.0,
                          backgroundImage:
                              AssetImage("assets/images/home_vid_2.png"),
                          backgroundColor: Colors.white,
                        ),
                        title: Row(
                          children: [
                            const Text(
                              "Chapter 1",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins.medium',
                                  color: Color(0xff26414C)),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          "1.1 Data Analysis",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins.medium',
                              color: Color(0xff26414C)),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ]));
  }
}
