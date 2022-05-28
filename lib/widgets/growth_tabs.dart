import 'package:flutter/material.dart';

import '../styles/style.dart';

class GrowthTabs extends StatefulWidget {
  List tabs;
  var selectedTab;
  Function updateTab;
   GrowthTabs({Key? key, required this.tabs, required this.selectedTab, required this.updateTab}) : super(key: key);

  @override
  State<GrowthTabs> createState() => _GrowthTabsState();
}

class _GrowthTabsState extends State<GrowthTabs> {
  @override

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var sub in widget.tabs)
            GestureDetector(
              onTap: () {
                widget.updateTab(sub);
                // setState(() {
                //   selectedTab = sub;
                // });
              },
              child: Container(

                height: 36,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Styles.sBlue,width: 2),
                  color:widget.selectedTab ==sub? Styles.sBlue: Colors.white,
                ),
                child: Center(child: Text(sub, style: widget.selectedTab == sub? Styles.TxtWhite: Styles.txtDark ,)),

              ),
            )
        ],
      ),
    );
  }
}
