import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysos/screens/mainPage/model/user.dart';
import 'package:mysos/screens/mainPage/widgets/user_title.dart';
import 'package:url_launcher/url_launcher.dart';

class NavSheduleView extends StatelessWidget {
  final listHistory = [
    User(
        name: "Trí Cường",
        avt:
            "https://scontent.fsgn8-2.fna.fbcdn.net/v/t1.6435-9/70587168_138618394076120_3910239866679459840_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=174925&_nc_ohc=S7OB6cQSF04AX8F-2Sr&_nc_ht=scontent.fsgn8-2.fna&oh=ec301b221d641a6527ed6ebb4dffea42&oe=617F28F5"),
    User(
        name: "Đặng Hoàng Huy Phước",
        avt:
            "https://scontent.fsgn13-2.fna.fbcdn.net/v/t1.6435-9/144446008_831635710718296_624300494827723918_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=r0OmXK_Evh8AX8vWGay&_nc_ht=scontent.fsgn13-2.fna&oh=17ef05be925916fca48bb78ae36e1842&oe=617F3798"),
    User(
        name: "Lê Nhựt Anh",
        avt:
            "https://scontent.fsgn13-2.fna.fbcdn.net/v/t39.30808-6/239857066_1498409850515637_7504935875006602562_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=e9BtNrBE6w0AX_Ou9gp&_nc_ht=scontent.fsgn13-2.fna&oh=20d1c6737d658e27e123e51e833db0a3&oe=615DDC25"),
    User(
        name: "Minh Thiên",
        avt:
            "https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.6435-9/89801610_1128330334167859_3140703077242241024_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=SSaqA911n-IAX_eDouH&_nc_oc=AQmQLqf4je2KIopcQra6Adlbz27x4O1jBylAjhDRSZCWuzA5tvfF9EP08Dvt8Qgs7baxnCMLJL9yDoUIWJqdkOkj&tn=VOHtqhmgQrdHDCEv&_nc_ht=scontent.fsgn4-1.fna&oh=ed77ee240a42a6af4eeae53ae6aa3f2e&oe=6180E3E1"),
    
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Spacer(),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lịch sử',
                style: TextStyle(fontSize: 34),
              )),
        ),
        Spacer(),
        CarouselSlider.builder(
          itemCount: listHistory.length,
          itemBuilder: (context, index, realIndex) {
            // Schedule1 _schedule = listSchedule[index];
            return UserTitle(listHistory[index]);
          },
          options: CarouselOptions(
            height: size.height * 0.5,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
          ),
        ),
        Spacer(),
      ],
    ));
  }
}
