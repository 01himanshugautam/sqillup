import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashboardScore extends StatefulWidget {
  const DashboardScore({Key? key}) : super(key: key);

  @override
  State<DashboardScore> createState() => _DashboardScoreState();
}

class _DashboardScoreState extends State<DashboardScore> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 92,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
              border: Border.all(color: Colors.red, width: 4.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  const Text(
                    "Math",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 110, 109, 109)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularPercentIndicator(
                      radius: 20.0,
                      lineWidth: 4.0,
                      percent: 0.10,
                      center: const Text("67%"),
                      progressColor: Colors.red,
                    ),
                  ),
                  const Text("Math overall score",
                      style: TextStyle(
                          fontSize: 5,
                          color: Color.fromRGBO(143, 143, 143, 1))),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
          ),
          Container(
            width: 92,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
              border: Border.all(color: Colors.blue, width: 4.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  const Text(
                    "Physics",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 110, 109, 109)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularPercentIndicator(
                      radius: 20.0,
                      lineWidth: 4.0,
                      percent: 0.10,
                      center: const Text("48%"),
                      progressColor: Colors.blue,
                    ),
                  ),
                  const Text("Physics overall score",
                      style: TextStyle(
                          fontSize: 5,
                          color: Color.fromRGBO(143, 143, 143, 1))),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
          ),
          Container(
            width: 92,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
              border: Border.all(color: Colors.green, width: 4.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  const Text(
                    "Biology",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 110, 109, 109)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularPercentIndicator(
                      radius: 20.0,
                      lineWidth: 4.0,
                      percent: 0.10,
                      center: const Text("78%"),
                      progressColor: Colors.green,
                    ),
                  ),
                  const Text("Biology overall score",
                      style: TextStyle(
                          fontSize: 5,
                          color: Color.fromRGBO(143, 143, 143, 1))),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
          ),
          Container(
            width: 92,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
              border: Border.all(color: Colors.yellow, width: 4.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  const Text(
                    "Chemistry",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 110, 109, 109)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularPercentIndicator(
                      radius: 20.0,
                      lineWidth: 4.0,
                      percent: 0.10,
                      center: const Text("67%"),
                      progressColor: Colors.yellow,
                    ),
                  ),
                  const Text("Chemistry overall score",
                      style: TextStyle(
                          fontSize: 5,
                          color: Color.fromRGBO(143, 143, 143, 1))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
