import 'package:flutter/material.dart';
import 'package:mysos/screens/mainPage/model/user.dart';

import 'package:url_launcher/url_launcher.dart';

class UserTitle extends StatelessWidget {
  final User user;
  UserTitle(this.user);
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        // padding: EdgeInsets.only(right: 10,left: 10),
        // margin: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        margin: EdgeInsets.only(top: 30),
        // width: double.infinity,
        // height: double.infinity,
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(
              const Radius.circular(20.0),
            )),
        child: Container(
          padding: EdgeInsets.only(right: 10, left: 10),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  user.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.amber,
                height: 20,
                thickness: 2,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Thời gian:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(child: Text("16/6/2021  3:30 PM")),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Địa điểm:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(child: Text("157 đường 265 quận 9 Hồ Chí Minh")),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Vấn đề:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(child: Text("Xe ô tô")),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Dịch vụ:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(child: Text(" Kéo xe")),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Ghi chú:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(child: Text("")),
                  ],
                ),
              ),
              Divider(
                color: Colors.amber,
                height: 20,
                thickness: 2,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Tổng chi phí: ",
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    )),
                    Expanded(
                        child: Text(
                      "500.000 VNĐ ",
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    )),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      Positioned(
        top: 0,
        left: 20,
        child: CircleAvatar(
          backgroundColor: Colors.amber.shade900.withOpacity(0.6),
          radius: 50,
          child: CircleAvatar(
            // backgroundImage: AssetImage(urlImage),
            backgroundImage: NetworkImage(user.avt),
            radius: 40,
          ),
        ),
      ),
      Positioned(
          bottom: -10,
          right: -20,
          child: FlatButton(
            onPressed: () async {
              launch('tel://+84794219080');
              // await FlutterPhoneDirectCaller.callNumber('0794219080');
            },
            child: CircleAvatar(
              backgroundColor: Colors.green.withOpacity(0.7),
              radius: 40,
              child: Container(
                width: 60,
                height: 60,
                // color: Colors.greenAccent[400],
                decoration: BoxDecoration(
                    color: Colors.greenAccent[400],
                    borderRadius: new BorderRadius.all(Radius.circular(60))),
                child: Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          )),
    ]);
  }
}
