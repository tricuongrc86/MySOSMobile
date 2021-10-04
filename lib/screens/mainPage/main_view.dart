import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysos/screens/mainPage/nav_car_view.dart';
import 'package:mysos/screens/mainPage/nav_info_view.dart';
import 'package:mysos/screens/mainPage/nav_motobike_view.dart';
import 'package:mysos/screens/mainPage/nav_history_view.dart';

class MainView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var index = 0.obs;
    final iconItems = <Widget>[
      Icon(
        Icons.motorcycle_outlined,
        size: 30,
      ),
      Icon(
        Icons.car_repair_outlined,
        size: 30,
      ),
      Icon(
        Icons.history_outlined,
        size: 30,
      ),
      Icon(
        Icons.person,
        size: 30,
      ),
    ];
    final views = [
     
      // NavNotifyView(),
      // NavHistoryView(),
      // NavSettingView(),
      NavMotoBikeView(),
      NavCarView(),
      NavSheduleView(),
      NavInfoView(),
    ];
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
        extendBody: true,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.amber.shade900,
          title: Text(
            'MY SOS',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Obx(() => views[index.value]),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(iconTheme: IconThemeData(color: Colors.black)),
          child: CurvedNavigationBar(
            color:  Colors.amber.shade900,
            backgroundColor: Colors.transparent,
            // buttonBackgroundColor: Colors.greenAccent,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 300),
            height: 60,
            index: index.value,
            items: iconItems,
            onTap: index,
          ),
        ));
  }
}
