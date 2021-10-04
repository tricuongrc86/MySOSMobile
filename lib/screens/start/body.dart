import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mysos/screens/login/login_view.dart';

class Body extends StatelessWidget {
  final nameApp = "My SOS";
  final textWelcome =
      "Chào mừng bạn đến với ứng dụng MySOS. Ở đây chúng tôi sẽ giúp bạn giải quyết các vấn đề khẩn cấp";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    nameApp,
                    style: TextStyle(
                      color: Colors.amber[800],
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                    // textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SvgPicture.asset(
              'assets/sitOnCar.svg',
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                textWelcome,
                style: TextStyle(
                    color: Colors.amber[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.all(10),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Tiếp tục với số điện thoại'),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginView(),
                    ))),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 30,
                    color: Colors.black,
                  ),
                ),
                Text("OR", style: TextStyle(color: Colors.black)),
                Expanded(
                    child: Divider(
                  height: 30,
                  color: Colors.black,
                )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.all(10),
            child: RaisedButton(
              color: Colors.amber.shade900,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text('Cứu hộ ngay'),
              //           onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => MainPage(),
              // ) )
              onPressed: () => null,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  
}
