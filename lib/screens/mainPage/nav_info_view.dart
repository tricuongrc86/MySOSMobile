import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mysos/screens/mainPage/main_view.dart';
import 'package:mysos/screens/mainPage/widgets/profile_menu.dart';
import 'package:mysos/screens/start/start_view.dart';


class NavInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber[200],
        alignment: Alignment.center,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/avt.jpg"),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
           "Nguyễn Huy Trí Cường",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
          
            ProfileMenu(
              icon: Icon(Icons.person,color: Colors.orange.shade200,),
              press: () {},
              text: 'Hồ sơ cá nhân',
            ),
            ProfileMenu(
        icon: Icon(Icons.car_repair_outlined,color: Colors.orange.shade200,),
              press: () {},
              text: 'Quản lý xe',
            ),
            ProfileMenu(
         icon: Icon(Icons.settings,color: Colors.orange.shade200,),
              press: () {},
              text: 'Cài đặt',
            ),
            ProfileMenu(
        icon: Icon(Icons.headset_mic_outlined,color: Colors.orange.shade200,),
              press: () {},
              text: 'Hỗ trợ',
            ),
            ProfileMenu(
         icon: Icon(Icons.logout_outlined,color: Colors.orange.shade200,),
              press: () {    
                Navigator.popUntil(context, (route) => false);   
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                   return StartView();
                    // return MapBikePage();
                  },
                ),
              );
              },
              text: 'Đăng xuất',
            ),
          ],
        ),
      ),
    );
  }
}
