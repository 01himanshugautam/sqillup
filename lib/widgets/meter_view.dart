import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../styles/style.dart';

class MeterView extends StatefulWidget {
  const MeterView({Key? key}) : super(key: key);

  @override
  State<MeterView> createState() => _MeterViewState();
}

class _MeterViewState extends State<MeterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Container(
                child: SfRadialGauge(axes: <RadialAxis>[
          RadialAxis(
              axisLineStyle: AxisLineStyle(
                  color: Styles.sBlue.withOpacity(0.5),
                  thickness: 13,
                  cornerStyle: CornerStyle.bothCurve),
              showTicks: false,
              minorTicksPerInterval: 0,
              showLabels: false,
              minimum: 0,
              maximum: 500,
              ranges: <GaugeRange>[
                GaugeRange(
                  startValue: 0,
                  startWidth: 13,
                  endWidth: 13,
                  endValue: 350,
                  color: Styles.sBlue,
                ),
              ],
              pointers: const <GaugePointer>[

                // NeedlePointer(value: 90)
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    widget: Column(children: [
                      const Text('398', style: Styles.txtVeryBigLight),
                      Text('Excellent', style: Styles.txtLargeMid),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star_sharp,size: 34,color: Styles.sStarOrange,),
                          Icon(Icons.star_sharp,size: 34,color: Styles.sStarOrange,),
                          Icon(Icons.star_sharp,size: 34,color: Styles.sStarOrange,),
                        ],
                      )
                    ]),
                    angle: 90,
                    positionFactor: 0.8)
              ])
        ]))));
  }
}
